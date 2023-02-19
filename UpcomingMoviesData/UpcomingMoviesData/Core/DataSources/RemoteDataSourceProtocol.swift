//
//  RemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol RemoteDataSourceProtocol {

    func configure(with apiKey: String, readAccessToken: String)

    func movieDataSource() -> MovieRemoteDataSourceProtocol
    func genreDataSource() -> GenreRemoteDataSourceProtocol
    func accountDataSource() -> AccountRemoteDataSourceProtocol
    func authDataSource() -> AuthRemoteDataSourceProtocol
    func configurationDataSource() -> ConfigurationRemoteDataSourceProtocol

}
