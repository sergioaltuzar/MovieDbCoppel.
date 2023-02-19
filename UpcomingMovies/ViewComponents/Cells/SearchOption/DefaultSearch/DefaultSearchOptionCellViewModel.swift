//
//  DefaultSearchOptionCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

protocol DefaultSearchOptionCellViewModelProtocol {

    var title: String? { get }
    var subtitle: String? { get }

}

final class DefaultSearchOptionCellViewModel: DefaultSearchOptionCellViewModelProtocol {

    var title: String?
    var subtitle: String?

    init(defaultSearchOption: DefaultSearchOption) {
        title = defaultSearchOption.title
        subtitle = defaultSearchOption.subtitle
    }

}
