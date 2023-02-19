//
//  MovieVideosProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieVideosViewModelProtocol {

    var movieTitle: String { get }

    var viewState: AnyBehaviorBindable<MovieVideosViewState> { get }
    var startLoading: AnyBehaviorBindable<Bool> { get }

    var videoCells: [MovieVideoCellViewModelProtocol] { get }

    func videoURL(at index: Int) -> URL?
    func getMovieVideos(showLoader: Bool)

}

protocol MovieVideosInteractorProtocol {

    func getMovieVideos(for movieId: Int, page: Int?,
                        completion: @escaping (Result<[Video], Error>) -> Void)

}

protocol MovieVideosCoordinatorProtocol: AnyObject {}
