//
//  User.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct User: Equatable {

    public let id: Int
    public let name: String
    public let username: String
    public let includeAdult: Bool

    public init(id: Int, name: String, username: String, includeAdult: Bool) {
        self.id = id
        self.name = name
        self.username = username
        self.includeAdult = includeAdult
    }

}
