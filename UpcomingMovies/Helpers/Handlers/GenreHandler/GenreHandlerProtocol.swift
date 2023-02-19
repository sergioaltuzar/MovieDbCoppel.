//
//  GenreHandlerProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

/**
 * Provides methods to access the movie genres names
 * because they are not always sent to us through the endpoints.
 */
protocol GenreHandlerProtocol {

    func setGenres(_ genres: [Genre])
    func getGenreName(for genreId: Int) -> String?

}
