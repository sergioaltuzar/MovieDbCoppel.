//
//  ImageTransitionable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

protocol Transitionable: UIViewController {

    var transitionContainerView: UIView! { get }

}

protocol TransitionableInitiator: UIViewController {}
