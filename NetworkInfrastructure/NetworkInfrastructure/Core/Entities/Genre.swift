//
//  Genre.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct Genre: Decodable {

    let id: Int
    let name: String

}

extension Genre: DomainConvertible {

    func asDomain() -> UpcomingMoviesDomain.Genre {
        UpcomingMoviesDomain.Genre(id: id, name: name)
    }

}
