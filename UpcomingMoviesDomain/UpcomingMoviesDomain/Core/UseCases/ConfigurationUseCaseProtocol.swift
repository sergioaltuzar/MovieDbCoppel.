//
//  ConfigurationUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol ConfigurationUseCaseProtocol {

    func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)

}
