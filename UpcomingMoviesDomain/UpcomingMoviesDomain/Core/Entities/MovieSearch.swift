//
//  MovieSearch.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

public struct MovieSearch {

    public let id: String
    public let searchText: String
    public let createdAt: Date

    public init(id: String, searchText: String, createdAt: Date) {
        self.id = id
        self.searchText = searchText
        self.createdAt = createdAt
    }

}
