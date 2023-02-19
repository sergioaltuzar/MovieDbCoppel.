//
//  RecentSearchCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

protocol RecentSearchCellViewModelProtocol {

    var searchText: String { get }

}

final class RecentSearchCellViewModel: RecentSearchCellViewModelProtocol {

    let searchText: String

    init(searchText: String) {
        self.searchText = searchText
    }

}
