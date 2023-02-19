//
//  List+MockInitializer.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//

extension List {

    static func create(id: String = "1",
                       name: String = "Test",
                       description: String = "Test",
                       backdropPath: String? = nil,
                       averageRating: Double? = nil,
                       runtime: Int? = nil,
                       movieCount: Int = 1,
                       movies: [Movie]? = [Movie.create()]) -> List {
        List(id: id, name: name, description: description,
             backdropPath: backdropPath, averageRating: averageRating,
             runtime: runtime, movieCount: movieCount, movies: movies)
    }

}
