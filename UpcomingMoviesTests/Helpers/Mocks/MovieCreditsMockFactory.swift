//
//  MovieCreditsMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

final class MockMovieCreditsInteractor: MovieCreditsInteractorProtocol {

    var getMovieCreditsResult: Result<MovieCredits, Error>?
    func getMovieCredits(for movieId: Int, page: Int?, completion: @escaping (Result<MovieCredits, Error>) -> Void) {
        completion(getMovieCreditsResult!)
    }

}

final class MockMovieCreditsFactory: MovieCreditsFactoryProtocol {

    var sections: [MovieCreditsCollapsibleSection] = []

}
