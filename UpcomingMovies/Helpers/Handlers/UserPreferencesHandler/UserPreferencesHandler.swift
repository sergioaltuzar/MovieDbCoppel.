//
//  UserPreferencesHandler.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

final class UserPreferencesHandler: UserPreferencesHandlerProtocol {

    @UserDefaultsStorage(key: "UpcomingMoviesPresentationMode", defaultValue: 0)
    private var upcomingMoviesPresentationModeRawValue: Int

    var upcomingMoviesPresentationMode: UpcomingMoviesPresentationMode {
        get {
            UpcomingMoviesPresentationMode(rawValue: upcomingMoviesPresentationModeRawValue) ?? .preview
        }
        set {
            upcomingMoviesPresentationModeRawValue = newValue.rawValue
        }
    }

}
