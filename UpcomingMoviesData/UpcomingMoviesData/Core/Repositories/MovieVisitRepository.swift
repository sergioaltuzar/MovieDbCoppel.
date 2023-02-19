//
//  MovieVisitRepository.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public final class MovieVisitRepository: MovieVisitUseCaseProtocol {

    private let localDataSource: MovieVisitLocalDataSourceProtocol

    public var didUpdateMovieVisit: (() -> Void)? {
        didSet {
            self.localDataSource.didUpdateMovieVisit = didUpdateMovieVisit
        }
    }

    init(localDataSource: MovieVisitLocalDataSourceProtocol) {
        self.localDataSource = localDataSource
    }

    public func getMovieVisits(completion: @escaping (Result<[MovieVisit], Error>) -> Void) {
        localDataSource.getMovieVisits(completion: completion)
    }

    public func save(with id: Int, title: String, posterPath: String?,
                     completion: @escaping (Result<Void, Error>) -> Void) {
        localDataSource.save(with: id, title: title, posterPath: posterPath, completion: completion)
    }

}
