//
//  MovieVisit+MockInitializer.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//

public extension MovieVisit {

    static func with(id: Int = 1,
                     title: String = "Title",
                     posterPath: String = "",
                     createdAt: Date? = nil) -> MovieVisit {
        MovieVisit(id: id, title: title, posterPath: posterPath, createdAt: createdAt)
    }

}
