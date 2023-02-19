//
//  UpcomingMoviesDisplayMode.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

enum UpcomingMoviesPresentationMode: Int {
    case preview
    case detail

    var cellIdentifier: String {
        switch self {
        case .preview:
            return UpcomingMoviePreviewCollectionViewCell.dequeueIdentifier
        case .detail:
            return UpcomingMovieExpandedCollectionViewCell.dequeueIdentifier
        }
    }
}
