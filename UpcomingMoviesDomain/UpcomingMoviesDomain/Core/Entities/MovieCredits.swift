//
//  MovieCredits.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct MovieCredits {

    public let cast: [Cast]
    public let crew: [Crew]

    public init(cast: [Cast], crew: [Crew]) {
        self.cast = cast
        self.crew = crew
    }

}
