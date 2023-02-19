//
//  Review.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct Review: Equatable {

    public let id: String
    public let authorName: String
    public let content: String

    public init(id: String, authorName: String, content: String) {
        self.id = id
        self.authorName = authorName
        self.content = content
    }

}
