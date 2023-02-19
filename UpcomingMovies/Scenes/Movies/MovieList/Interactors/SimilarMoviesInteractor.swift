//
//  SimilarMoviesInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

struct SimilarMoviesInteractor: MoviesInteractorProtocol {

    let movieUseCase: MovieUseCaseProtocol
    let movieId: Int

    init(useCaseProvider: UseCaseProviderProtocol, movieId: Int) {
        self.movieUseCase = useCaseProvider.movieUseCase()
        self.movieId = movieId
    }

    func getMovies(page: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
        movieUseCase.getSimilarMovies(page: page, movieId: movieId, completion: completion)
    }

}
