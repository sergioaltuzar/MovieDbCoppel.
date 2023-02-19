//
//  ToggleBarButtonItemViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

protocol ToggleBarButtonItemViewModelProtocol {

    /// We support more than two items for the ToggleBarButtonItem. First item will be displayed initially.
    var contents: [ToggleBarButtonItemContentProtocol] { get }

}

struct ToggleBarButtonItemViewModel: ToggleBarButtonItemViewModelProtocol {

    let contents: [ToggleBarButtonItemContentProtocol]

}
