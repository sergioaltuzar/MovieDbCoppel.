//
//  Review.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct Review: Decodable {

    let id: String
    let authorName: String
    let content: String

    private enum CodingKeys: String, CodingKey {
        case id
        case authorName = "author"
        case content
    }

}

extension Review: DomainConvertible {

    func asDomain() -> UpcomingMoviesDomain.Review {
        UpcomingMoviesDomain.Review(id: id, authorName: authorName, content: content)
    }

}
