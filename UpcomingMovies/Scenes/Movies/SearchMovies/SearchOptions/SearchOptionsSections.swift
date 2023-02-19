//
//  SearchOptionsSections.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

enum SearchOptionsSection {
    case recentlyVisited, defaultSearches, genres

    var title: String? {
        switch self {
        case .recentlyVisited:
            return LocalizedStrings.recentlyVisitedSeearchSectionTitle()
        case .defaultSearches:
            return nil
        case .genres:
            return LocalizedStrings.movieGenresSearchSectionTitle()
        }
    }

}
