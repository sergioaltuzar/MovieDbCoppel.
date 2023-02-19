//
//  ImagesConfiguration.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct ImagesConfiguration {

    public private(set) var baseURLString: String
    public private(set) var backdropSizes: [String]
    public private(set) var posterSizes: [String]

    public init(baseURLString: String, backdropSizes: [String], posterSizes: [String]) {
        self.baseURLString = baseURLString
        self.backdropSizes = backdropSizes
        self.posterSizes = posterSizes
    }

}
