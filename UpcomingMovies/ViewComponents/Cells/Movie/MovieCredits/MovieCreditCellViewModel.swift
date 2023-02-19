//
//  MovieCreditCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieCreditCellViewModelProtocol {

    var name: String { get }
    var role: String { get }
    var profileURL: URL? { get }
    var accessibilityText: String { get }

}

final class MovieCreditCellViewModel: MovieCreditCellViewModelProtocol {

    let name: String
    let role: String
    let profileURL: URL?
    let accessibilityText: String

    init(cast: Cast) {
        name = cast.name
        role = cast.character
        profileURL = cast.profileURL

        accessibilityText = String(format: LocalizedStrings.movieCreditAccessibility(), name, role)
    }

    init(crew: Crew) {
        name = crew.name
        role = crew.job
        profileURL = crew.profileURL

        accessibilityText = String(format: LocalizedStrings.movieCreditAccessibility(), name, role)
    }

}
