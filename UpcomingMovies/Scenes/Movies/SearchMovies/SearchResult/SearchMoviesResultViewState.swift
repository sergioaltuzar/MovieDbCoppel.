//
//  SearchMoviesResultViewState.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

enum SearchMoviesResultViewState: Equatable {

    case recentSearches
    case empty
    case searching
    case populated([Movie])
    case error(Error)

    static func == (lhs: SearchMoviesResultViewState, rhs: SearchMoviesResultViewState) -> Bool {
        switch (lhs, rhs) {
        case (.recentSearches, .recentSearches):
            return true
        case (.empty, .empty):
            return true
        case (.searching, .searching):
            return true
        case (.populated(let lhsMovies), .populated(let rhsMovies)):
            return lhsMovies == rhsMovies
        case (.error, .error):
            return true
        default:
            return false
        }
    }

    var sections: [SearchMoviesResultSections]? {
        switch self {
        case .populated:
            return [.searchedMovies]
        case .recentSearches:
            return [.recentSearches]
        case .searching, .empty, .error:
            return nil
        }
    }

    var currentSearchedMovies: [Movie] {
        switch self {
        case .populated(let entities):
            return entities
        case .recentSearches, .empty, .error, .searching:
            return []
        }
    }

}
