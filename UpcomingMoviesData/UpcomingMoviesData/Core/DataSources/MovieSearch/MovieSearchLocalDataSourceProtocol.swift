//
//  MovieSearchLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public protocol MovieSearchLocalDataSourceProtocol: AnyObject {

    var didUpdateMovieSearch: (() -> Void)? { get set }

    func getMovieSearches(completion: @escaping (Result<[MovieSearch], Error>) -> Void)
    func save(with searchText: String, completion: @escaping (Result<Void, Error>) -> Void)

}
