//
//  GenreLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public protocol GenreLocalDataSourceProtocol: AnyObject {

    var didUpdateGenre: (() -> Void)? { get set }

    func saveGenres(_ genres: [Genre])
    func find(with id: Int) -> Genre?
    func findAll() -> [Genre]

}
