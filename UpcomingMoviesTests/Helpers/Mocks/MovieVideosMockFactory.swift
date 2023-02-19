//
//  MovieVideosMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

final class MockMovieVideosInteractor: MovieVideosInteractorProtocol {

    var getMovieVideosResult: Result<[Video], Error>?
    func getMovieVideos(for movieId: Int, page: Int?, completion: @escaping (Result<[Video], Error>) -> Void) {
        completion(getMovieVideosResult!)
    }

}
