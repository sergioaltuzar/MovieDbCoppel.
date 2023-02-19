//
//  SearchController.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class SearchController: UISearchController {

    init(searchResultsController: UIViewController?,
         hidesNavigationBarDuringPresentation: Bool,
         searchBarStyle: UISearchBar.Style) {
        super.init(searchResultsController: searchResultsController)
        self.hidesNavigationBarDuringPresentation = hidesNavigationBarDuringPresentation
        self.searchBar.searchBarStyle = searchBarStyle
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
