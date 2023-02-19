//
//  CreditResult.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct CreditResult: Decodable {

    let id: Int
    let cast: [Cast]
    let crew: [Crew]

}
