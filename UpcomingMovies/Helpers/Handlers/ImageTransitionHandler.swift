//
//  ImageTransitionHandler.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

final class ImageTransitionHandler {

    private let imageView: UIImageView
    private let transitionImages: [UIImage]
    private let transitionInterval: TimeInterval

    // We start on the second index because the first image is set up without animation.
    private var currentTransitionImageIndex = 1

    private var transitionTimer: Timer?

    // MARK: - Initializers

    init(imageView: UIImageView,
         transitionImages: [UIImage],
         transitionInterval: TimeInterval = 2.0) {
        assert(transitionImages.count > 1, "There has to be more than one transition image")

        self.imageView = imageView
        self.transitionImages = transitionImages
        self.transitionInterval = transitionInterval

        self.imageView.image = transitionImages.first

        configureTimer()
    }

    // MARK: - Private

    private func configureTimer() {
        transitionTimer = Timer.scheduledTimer(withTimeInterval: transitionInterval,
                                               repeats: true,
                                               block: { [weak self] _ in
                                                self?.startIconTransition()
                                               })
    }

    private func startIconTransition() {
        let image = transitionImages[currentTransitionImageIndex]
        updateTransitionImageIndex()
        UIView.transition(with: self.imageView,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.imageView.image = image
                          }, completion: nil)
    }

    private func updateTransitionImageIndex() {
        if currentTransitionImageIndex == transitionImages.count - 1 {
            currentTransitionImageIndex = 0
        } else {
            currentTransitionImageIndex += 1
        }
    }

    // MARK: - Internal

    func invalidate() {
        transitionTimer?.invalidate()
        transitionTimer = nil
    }

}
