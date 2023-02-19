//
//  SearchMoviesMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class SearchOptionsInteractorMock: SearchOptionsInteractorProtocol {

    var didUpdateMovieVisit: (() -> Void)?

    var getGenresResult: Result<[Genre], Error>?
    private(set) var getGenresCallCount = 0
    func getGenres(completion: @escaping (Result<[Genre], Error>) -> Void) {
        if let getGenresResult = getGenresResult {
            completion(getGenresResult)
        }
        getGenresCallCount += 1
    }

    var getMovieVisitsResult: Result<[MovieVisit], Error>?
    private(set) var getMovieVisitsCallCount = 0
    func getMovieVisits(completion: @escaping (Result<[MovieVisit], Error>) -> Void) {
        if let getMovieVisitsResult = getMovieVisitsResult {
            completion(getMovieVisitsResult)
        }
        getMovieVisitsCallCount += 1
    }

}
