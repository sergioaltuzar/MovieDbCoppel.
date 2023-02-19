//
//  MovieVideoCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieVideoCellViewModelProtocol {

    var name: String { get }
    var thumbnailURL: URL? { get }

}

final class MovieVideoCellViewModel: MovieVideoCellViewModelProtocol {

    let name: String
    let thumbnailURL: URL?

    init(_ video: Video) {
        name = video.name
        thumbnailURL = video.thumbnailURL
    }

}
