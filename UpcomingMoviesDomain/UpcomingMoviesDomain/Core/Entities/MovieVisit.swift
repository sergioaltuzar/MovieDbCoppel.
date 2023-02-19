//
//  MovieVisit.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

public struct MovieVisit: Equatable {

    public let id: Int
    public let title: String
    public let posterPath: String
    public let createdAt: Date?

    public init(id: Int, title: String, posterPath: String, createdAt: Date?) {
        self.id = id
        self.title = title
        self.posterPath = posterPath
        self.createdAt = createdAt
    }

}
