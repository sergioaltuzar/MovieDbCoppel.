//
//  SortConfiguration.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct SortConfiguration {

    public private(set) var movieSortKeys: [String]

    public init(movieSortKeys: [String]) {
        self.movieSortKeys = movieSortKeys
    }

}
