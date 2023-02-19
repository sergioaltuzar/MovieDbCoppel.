//
//  SearchOptionsViewState.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

enum SearchOptionsViewState {

    case emptyMovieVisits
    case populatedMovieVisits

    var sections: [SearchOptionsSection] {
        switch self {
        case .emptyMovieVisits:
            return [.defaultSearches, .genres]
        case .populatedMovieVisits:
            return [.recentlyVisited, .defaultSearches, .genres]
        }
    }

}
