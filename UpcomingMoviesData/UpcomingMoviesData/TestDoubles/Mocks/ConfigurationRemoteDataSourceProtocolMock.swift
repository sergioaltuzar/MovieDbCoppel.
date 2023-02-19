//
//  ConfigurationRemoteDataSourceProtocolMock.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//

@testable import UpcomingMoviesDomain

final class ConfigurationRemoteDataSourceProtocolMock: ConfigurationRemoteDataSourceProtocol {

    var getConfigurationResult: Result<Configuration, Error>?
    private(set) var getConfigurationCallCount = 0
    func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void) {
        if let getConfigurationResult = getConfigurationResult {
            completion(getConfigurationResult)
        }
        getConfigurationCallCount += 1
    }

}
