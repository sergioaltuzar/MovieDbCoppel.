//
//  List+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public extension List {

    static func with(id: String = "1",
                     name: String = "Test",
                     description: String = "Test",
                     backdropPath: String? = nil,
                     averageRating: Double? = nil,
                     runtime: Int? = nil,
                     movieCount: Int = 1,
                     movies: [Movie]? = [Movie.with()]) -> List {
        List(id: id, name: name, description: description,
             backdropPath: backdropPath, averageRating: averageRating,
             runtime: runtime, movieCount: movieCount, movies: movies)
    }

}
