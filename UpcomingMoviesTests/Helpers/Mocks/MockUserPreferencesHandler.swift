//
//  MockUserPreferencesHandler.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockUserPreferencesHandler: UserPreferencesHandlerProtocol {

    var upcomingMoviesPresentationMode: UpcomingMoviesPresentationMode = .preview

}
