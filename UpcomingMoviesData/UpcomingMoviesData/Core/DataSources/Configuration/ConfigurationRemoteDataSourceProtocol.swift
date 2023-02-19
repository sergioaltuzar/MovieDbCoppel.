//
//  ConfigurationRemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public protocol ConfigurationRemoteDataSourceProtocol: AnyObject {

    func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)

}
