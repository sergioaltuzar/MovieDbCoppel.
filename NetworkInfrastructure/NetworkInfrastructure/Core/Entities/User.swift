//
//  User.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct User: Decodable {

    let id: Int
    let name: String
    let username: String
    let includeAdult: Bool

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case includeAdult = "include_adult"
    }

}

extension User: DomainConvertible {

    func asDomain() -> UpcomingMoviesDomain.User {
        UpcomingMoviesDomain.User(id: id, name: name,
                                  username: username, includeAdult: includeAdult)
    }

}
