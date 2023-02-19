//
//  Entities+GenreName.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

protocol GenreNameable {

    var genreId: Int? { get }
    var genreName: String { get }

}

extension GenreNameable {

    var genreHandler: GenreHandlerProtocol {
        DIContainer.shared.resolve()
    }

    var genreName: String {
        guard let genreId = genreId,
              let genreName = genreHandler.getGenreName(for: genreId) else {
            return "-"
        }
        return genreName
    }

}

extension Movie: GenreNameable {

    var genreId: Int? {
        genreIds?.first
    }

}
