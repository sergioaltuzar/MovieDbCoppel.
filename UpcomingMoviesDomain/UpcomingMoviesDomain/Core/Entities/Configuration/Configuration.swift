//
//  Configuration.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct Configuration {

    public private(set) var imagesConfiguration: ImagesConfiguration
    public private(set) var sortConfiguration: SortConfiguration

    public init(imagesConfiguration: ImagesConfiguration, sortConfiguration: SortConfiguration) {
        self.imagesConfiguration = imagesConfiguration
        self.sortConfiguration = sortConfiguration
    }

}
