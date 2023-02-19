//
//  Utils.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

func degreesToRadians (_ value: CGFloat) -> CGFloat {

    let piDegrees: CGFloat = 180.0
    return (value * CGFloat.pi) / piDegrees

}

func radiansToDegrees (_ value: CGFloat) -> CGFloat {

    let piDegrees: CGFloat = 180.0
    return (value * piDegrees) / CGFloat.pi

}
