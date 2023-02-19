//
//  UpcomingMoviesViewFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

protocol UpcomingMoviesFactoryProtocol {

    func makeGridBarButtonItemContents(for presentationMode: UpcomingMoviesPresentationMode) -> [ToggleBarButtonItemContent]

}

final class UpcomingMoviesFactory: UpcomingMoviesFactoryProtocol {

    // MARK: - UpcomingMoviesFactoryProtocol

    func makeGridBarButtonItemContents(for presentationMode: UpcomingMoviesPresentationMode) -> [ToggleBarButtonItemContent] {
        let preview = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "List")),
                                                 accessibilityLabel: LocalizedStrings.expandMovieCellsHint())
        let detail = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "Grid")),
                                                accessibilityLabel: LocalizedStrings.collapseMovieCellsHint())

        switch presentationMode {
        case .preview:
            return [preview, detail]
        case .detail:
            return [detail, preview]
        }
    }

}
