//
//  CustomListDetailViewState.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

enum CustomListDetailViewState {

    case loading
    case empty
    case populated([Movie])
    case error(Error)

    var currentMovies: [Movie] {
        switch self {
        case .loading, .empty, .error:
            return []
        case .populated(let movies):
            return movies
        }
    }

}
