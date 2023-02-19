//
//  LocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol LocalDataSourceProtocol {

    func genreDataSource() -> GenreLocalDataSourceProtocol
    func movieVisitDataSource() -> MovieVisitLocalDataSourceProtocol
    func movieSearchDataSource() -> MovieSearchLocalDataSourceProtocol
    func userDataSource() -> UserLocalDataSourceProtocol

}
