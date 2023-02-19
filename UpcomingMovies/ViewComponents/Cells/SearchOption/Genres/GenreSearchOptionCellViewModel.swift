//
//  GenreSearchOptionCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol GenreSearchOptionCellViewModelProtocol {

    var id: Int { get }
    var name: String? { get }

}

final class GenreSearchOptionCellViewModel: GenreSearchOptionCellViewModelProtocol {

    var id: Int
    var name: String?

    init(genre: Genre) {
        id = genre.id
        name = genre.name
    }

}
