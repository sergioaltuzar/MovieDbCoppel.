//
//  RecentlyVisitedMoviesCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

protocol RecentlyVisitedMoviesCellViewModelProtocol {

    var visitedMovieCells: [VisitedMovieCellViewModelProtocol] { get }

}

final class RecentlyVisitedMoviesCellViewModel: RecentlyVisitedMoviesCellViewModelProtocol {

    var visitedMovieCells: [VisitedMovieCellViewModelProtocol]

    init(visitedMovieCells: [VisitedMovieCellViewModelProtocol]) {
        self.visitedMovieCells = visitedMovieCells
    }

}
