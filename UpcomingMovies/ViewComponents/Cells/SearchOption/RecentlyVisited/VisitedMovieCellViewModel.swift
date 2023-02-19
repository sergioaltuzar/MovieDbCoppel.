//
//  VisitedMovieCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol VisitedMovieCellViewModelProtocol {

    var posterURL: URL? { get }

}

final class VisitedMovieCellViewModel: VisitedMovieCellViewModelProtocol {

    var posterURL: URL?

    init(movieVisit: MovieVisit) {
        let posterPath = movieVisit.posterPath
        posterURL = URL(string: posterPath)
    }

}
