//
//  UpcomingMoviesMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockUpcomingMoviesInteractor: MoviesInteractorProtocol {

    var displayTitle: String = "MovieDB Coppel"

    var upcomingMovies: Result<[UpcomingMoviesDomain.Movie], Error>?
    func getMovies(page: Int, completion: @escaping (Result<[UpcomingMoviesDomain.Movie], Error>) -> Void) {
        completion(upcomingMovies!)
    }

}

class MockUpcomingMoviesFactory: UpcomingMoviesFactoryProtocol {

    var makeGridBarButtonItemContentsResult: [ToggleBarButtonItemContent] = []
    func makeGridBarButtonItemContents(for presentationMode: UpcomingMoviesPresentationMode) -> [ToggleBarButtonItemContent] {
        makeGridBarButtonItemContentsResult
    }

}
