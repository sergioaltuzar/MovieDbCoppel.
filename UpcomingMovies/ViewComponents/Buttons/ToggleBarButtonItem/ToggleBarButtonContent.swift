//
//  ToggleBarButtonItemState.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


struct ToggleBarButtonItemContent: ToggleBarButtonItemContentProtocol {

    let display: ToggleBarButtonItemDisplay
    let accessibilityLabel: String?
    let accessibilityHint: String?

    init(display: ToggleBarButtonItemDisplay,
         accessibilityLabel: String? = nil,
         accessibilityHint: String? = nil) {
        self.display = display
        self.accessibilityLabel = accessibilityLabel
        self.accessibilityHint = accessibilityHint
    }

}
