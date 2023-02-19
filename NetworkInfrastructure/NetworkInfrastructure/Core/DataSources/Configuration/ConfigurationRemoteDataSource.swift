//
//  ConfigurationRemoteDataSource.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain
import UpcomingMoviesData

final class ConfigurationRemoteDataSource: ConfigurationRemoteDataSourceProtocol {

    private let client: ConfigurationClientProtocol

    init(client: ConfigurationClientProtocol) {
        self.client = client
    }

    func getConfiguration(completion: @escaping (Result<UpcomingMoviesDomain.Configuration, Error>) -> Void) {
        let sortConfigurationResult = SortConfigurationResult(movieSortKeys: [])
        client.getImagesConfiguration { result in
            switch result {
            case .success(let imagesConfigurationResult):
                let configuration = Configuration(imagesConfiguration: imagesConfigurationResult,
                                                  sortConfiguration: sortConfigurationResult)
                completion(.success(configuration.asDomain()))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
