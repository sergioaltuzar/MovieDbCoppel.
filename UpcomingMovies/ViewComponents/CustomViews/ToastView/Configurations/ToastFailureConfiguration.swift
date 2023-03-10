//
//  ToastFailureConfiguration.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class ToastFailureConfiguration: ToastConfigurationProtocol {

    init() {}

    var backgroundColor: UIColor = .red
    var borderColor: UIColor = .black
    var borderWidth: CGFloat = 1.0

    var titleInsets: UIEdgeInsets = .init(top: 8, left: 8, bottom: 8, right: 8)
    var titleTextColor: UIColor = .white
    var titleTextAlignment: NSTextAlignment = .center

    var cornerRadius: CGFloat = 5.0
    var animationDuration: TimeInterval = 0.5

    var dismissDuration: TimeInterval = 3.0

}
