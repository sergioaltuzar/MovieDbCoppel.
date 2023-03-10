//
//  TransitioningInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class TransitioningInteractor: UIPercentDrivenInteractiveTransition {

    private let navigationController: UINavigationController
    private var shouldCompleteTransition: Bool = false

    public var transitionInProgress: Bool = false

    // MARK: - Initializers

    init?(attachTo viewController: UIViewController) {
        guard let navigationController = viewController.navigationController else { return nil }
        self.navigationController = navigationController
        super.init()
        setupBackGesture(view: viewController.view)
    }

    // MARK: - Private

    private func setupBackGesture(view: UIView) {
        let swipeGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleBackGesture(_:)))
        swipeGesture.edges = .left
        view.addGestureRecognizer(swipeGesture)
    }

    // MARK: - Selectors

    @objc func handleBackGesture(_ gesture: UIScreenEdgePanGestureRecognizer) {
        let viewTranslation = gesture.translation(in: gesture.view?.superview)
        let progress = viewTranslation.x / navigationController.view.frame.width
        switch gesture.state {
        case .began:
            transitionInProgress = true
            navigationController.popViewController(animated: true)
        case .changed:
            shouldCompleteTransition = progress > 0.5
            update(progress)
        case .cancelled:
            transitionInProgress = false
            cancel()
        case .ended:
            transitionInProgress = false
            shouldCompleteTransition ? finish() : cancel()
        case .failed, .possible:
            fallthrough
        @unknown default:
            break
        }
    }

}
