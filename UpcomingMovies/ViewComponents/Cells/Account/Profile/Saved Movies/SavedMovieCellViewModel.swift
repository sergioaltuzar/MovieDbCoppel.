//
//  SavedMovieCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol SavedMovieCellViewModelProtocol {

    var title: String { get }
    var backdropURL: URL? { get }

}

final class SavedMovieCellViewModel: SavedMovieCellViewModelProtocol {

    let title: String
    let backdropURL: URL?

    init(_ favorite: Movie) {
        title = favorite.title
        backdropURL = favorite.backdropURL
    }

}
