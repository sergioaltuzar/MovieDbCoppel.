//
//  ReviewResult.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct ReviewResult: Decodable, Paginable {

    let results: [Review]
    var currentPage: Int
    var totalPages: Int

    private enum CodingKeys: String, CodingKey {
        case results
        case currentPage = "page"
        case totalPages = "total_pages"
    }

}
