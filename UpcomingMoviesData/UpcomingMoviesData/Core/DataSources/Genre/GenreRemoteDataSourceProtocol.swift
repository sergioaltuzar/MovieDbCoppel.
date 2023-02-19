//
//  GenreRemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public protocol GenreRemoteDataSourceProtocol: AnyObject {

    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void)

}
