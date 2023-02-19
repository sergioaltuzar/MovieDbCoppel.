//
//  ConfigurationRepository.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public final class ConfigurationRepository: ConfigurationUseCaseProtocol {

    private let remoteDataSource: ConfigurationRemoteDataSourceProtocol

    init(remoteDataSource: ConfigurationRemoteDataSourceProtocol) {
        self.remoteDataSource = remoteDataSource
    }

    public func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void) {
        remoteDataSource.getConfiguration(completion: completion)
    }
}
