//
//  List.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct List: Equatable {

    public let id: String
    public let name: String
    public let description: String?
    public let backdropPath: String?
    public let averageRating: Double?
    public let runtime: Int?
    public let movieCount: Int
    public let movies: [Movie]?

    public init(id: String, name: String, description: String?, backdropPath: String?,
                averageRating: Double?, runtime: Int?, movieCount: Int, movies: [Movie]?) {
        self.id = id
        self.name = name
        self.description = description
        self.backdropPath = backdropPath
        self.averageRating = averageRating
        self.runtime = runtime
        self.movieCount = movieCount
        self.movies = movies
    }

}
