//
//  ToastConfigurationProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

protocol ToastConfigurationProtocol {

    var backgroundColor: UIColor { get }
    var borderColor: UIColor { get }
    var borderWidth: CGFloat { get }

    var titleInsets: UIEdgeInsets { get }
    var titleTextColor: UIColor { get }
    var titleTextAlignment: NSTextAlignment { get }

    var cornerRadius: CGFloat { get }
    var animationDuration: TimeInterval { get }

    var dismissDuration: TimeInterval { get }

}
