//
//  SavedMoviesProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol SavedMoviesViewModelProtocol {

    var displayTitle: String? { get set }

    var movieCells: [SavedMovieCellViewModelProtocol] { get }
    var needsPrefetch: Bool { get }

    var startLoading: AnyBehaviorBindable<Bool> { get }
    var viewState: AnyBehaviorBindable<SavedMoviesViewState> { get }

    func getCollectionList()
    func refreshCollectionList()

    func movie(at index: Int) -> Movie

}

protocol SavedMoviesInteractorProtocol {

    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void)

}

protocol SavedMoviesCoordinatorProtocol: AnyObject {

    func showMovieDetail(for movie: Movie)

}
