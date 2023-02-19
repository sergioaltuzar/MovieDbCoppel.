//
//  Crew.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct Crew: Decodable {

    let id: Int
    let job: String
    let name: String
    let photoPath: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case job
        case name
        case photoPath = "profile_path"
    }

}

extension Crew: DomainConvertible {

    func asDomain() -> UpcomingMoviesDomain.Crew {
        UpcomingMoviesDomain.Crew(id: id, job: job, name: name, photoPath: photoPath)
    }

}
