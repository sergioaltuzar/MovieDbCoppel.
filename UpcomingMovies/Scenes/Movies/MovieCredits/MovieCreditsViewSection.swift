//
//  MovieCreditsViewSection.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

final class MovieCreditsCollapsibleSection {

    let type: MovieCreditsViewSection
    var opened: Bool

    init(type: MovieCreditsViewSection, opened: Bool) {
        self.type = type
        self.opened = opened
    }

}

enum MovieCreditsViewSection {
    case cast, crew

    var title: String {
        switch self {
        case .cast:
            return LocalizedStrings.cast()
        case .crew:
            return LocalizedStrings.crew()
        }
    }

}
