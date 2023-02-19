//
//  MovieAccountStateResult.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

struct MovieAccountStateResult: Decodable {

    let id: Int
    let favorite: Bool
    let watchlist: Bool

}
