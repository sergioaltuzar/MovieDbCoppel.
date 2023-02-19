//
//  UIView+ToastUtils.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

extension UIView {

    func showSuccessToast(withMessage message: String, completion: ((Bool) -> Void)? = nil) {
        showToast(withMessage: message, defaultConfiguration: .success, completion: completion)
    }

    func showFailureToast(withMessage message: String, completion: ((Bool) -> Void)? = nil) {
        showToast(withMessage: message, defaultConfiguration: .failure, completion: completion)
    }

}
