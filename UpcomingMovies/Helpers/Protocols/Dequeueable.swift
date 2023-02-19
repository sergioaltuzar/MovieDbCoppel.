//
//  Dequeueable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

protocol Dequeueable {

    static var dequeueIdentifier: String { get }

}

extension Dequeueable where Self: UIView {

    static var dequeueIdentifier: String {
        String(describing: self)
    }

}

extension UITableViewCell: Dequeueable { }

extension UICollectionViewCell: Dequeueable { }
