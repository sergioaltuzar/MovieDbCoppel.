//
//  Retryable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

private struct AssociatedKeys {
    static var retryView: RetryPlaceHolderable?
}

protocol Retryable: AnyObject {

    func presentRetryView(in view: UIView,
                          with errorMessage: String?,
                          retryHandler: @escaping () -> Void)

    func hideRetryView()

}

extension Retryable {

    private(set) var retryView: RetryPlaceHolderable? {
        get {
            guard let value = objc_getAssociatedObject(self, &AssociatedKeys.retryView) as? RetryPlaceHolderable else {
                return nil
            }
            return value
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.retryView, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    func presentRetryView(in view: UIView,
                          with errorMessage: String?,
                          retryHandler: @escaping () -> Void) {
        let isPresented = retryView?.isPresented ?? false
        if isPresented {
            self.retryView?.resetState()
        } else {
            self.retryView = ErrorPlaceholderView.loadFromNib()
            retryView?.retry = retryHandler
            retryView?.detailText = errorMessage
            self.retryView?.show(in: view, animated: true, completion: nil)
        }
    }

    func hideRetryView() {
        retryView?.hide(animated: true, completion: nil)
    }

}

extension Retryable where Self: UIViewController {

    func presentRetryView(with errorMessage: String?, retryHandler: @escaping () -> Void) {
        presentRetryView(in: self.view, with: errorMessage, retryHandler: retryHandler)
    }

}
