//
//  MovieSearchRepository.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public final class MovieSearchRepository: MovieSearchUseCaseProtocol {

    private let localDataSource: MovieSearchLocalDataSourceProtocol

    public var didUpdateMovieSearch: (() -> Void)? {
        didSet {
            self.localDataSource.didUpdateMovieSearch = didUpdateMovieSearch
        }
    }

    init(localDataSource: MovieSearchLocalDataSourceProtocol) {
        self.localDataSource = localDataSource
    }

    public func getMovieSearches(completion: @escaping (Result<[MovieSearch], Error>) -> Void) {
        localDataSource.getMovieSearches(completion: completion)
    }

    public func save(with searchText: String, completion: @escaping (Result<Void, Error>) -> Void) {
        localDataSource.save(with: searchText, completion: completion)
    }

}
