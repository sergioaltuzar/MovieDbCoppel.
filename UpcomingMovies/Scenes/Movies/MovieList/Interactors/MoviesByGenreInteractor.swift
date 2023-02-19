//
//  MoviesByGenreInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

struct MoviesByGenreInteractor: MoviesInteractorProtocol {

    let movieUseCase: MovieUseCaseProtocol
    let genreId: Int
    let genreName: String

    init(useCaseProvider: UseCaseProviderProtocol, genreId: Int, genreName: String) {
        self.movieUseCase = useCaseProvider.movieUseCase()
        self.genreId = genreId
        self.genreName = genreName
    }

    func getMovies(page: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
        movieUseCase.getMoviesByGenre(page: page, genreId: genreId, completion: completion)
    }

}
