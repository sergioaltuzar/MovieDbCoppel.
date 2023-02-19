//
//  SavedMoviesMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockSavedMoviesInteractor: SavedMoviesInteractorProtocol {

    var getSavedMoviesResult: Result<[Movie], Error>?
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        completion(getSavedMoviesResult!)
    }

}
