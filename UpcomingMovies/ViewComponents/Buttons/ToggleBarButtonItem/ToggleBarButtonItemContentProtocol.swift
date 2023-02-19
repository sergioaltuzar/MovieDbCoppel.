//
//  ToggleBarButtonItemContentProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


protocol ToggleBarButtonItemContentProtocol {

    var display: ToggleBarButtonItemDisplay { get }
    var accessibilityLabel: String? { get }
    var accessibilityHint: String? { get }

}
