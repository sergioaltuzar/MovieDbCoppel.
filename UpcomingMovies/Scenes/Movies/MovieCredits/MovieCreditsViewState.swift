//
//  MovieCreditsViewState.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

enum MovieCreditsViewState: Equatable {

    case initial
    case empty
    case populated([Cast], [Crew])
    case error(Error)

    static func == (lhs: MovieCreditsViewState, rhs: MovieCreditsViewState) -> Bool {
        switch (lhs, rhs) {
        case (.initial, .initial):
            return true
        case (let .populated(lhsCast, lhsCrew), let .populated(rhsCast, rhsCrew)):
            return (lhsCast, lhsCrew) == (rhsCast, rhsCrew)
        case (.empty, .empty):
            return true
        case (.error, .error):
            return true
        default:
            return false
        }
    }

    var currentCast: [Cast] {
        switch self {
        case .populated(let cast, _):
            return cast
        case .initial, .empty, .error:
            return []
        }
    }

    var currentCrew: [Crew] {
        switch self {
        case .populated(_, let crew):
            return crew
        case .initial, .empty, .error:
            return []
        }
    }

}
