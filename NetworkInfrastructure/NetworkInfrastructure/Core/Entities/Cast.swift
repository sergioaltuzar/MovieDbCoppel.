//
//  Cast.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct Cast: Decodable {

    let id: Int
    let character: String
    let name: String
    let photoPath: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case character
        case name
        case photoPath = "profile_path"
    }

}

extension Cast: DomainConvertible {

    func asDomain() -> UpcomingMoviesDomain.Cast {
        UpcomingMoviesDomain.Cast(id: id, character: character, name: name, photoPath: photoPath)
    }

}
