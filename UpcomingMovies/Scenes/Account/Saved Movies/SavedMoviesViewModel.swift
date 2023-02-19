//
//  SavedMoviesViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class SavedMoviesViewModel: SavedMoviesViewModelProtocol, SimpleViewStateProcessable {

    // MARK: - Dependencies

    private let interactor: SavedMoviesInteractorProtocol

    // MARK: - Reactive properties

    let startLoading = BehaviorBindable(false).eraseToAnyBindable()
    let viewState = BehaviorBindable(SavedMoviesViewState.initial).eraseToAnyBindable()

    // MARK: - Computed properties

    private var movies: [Movie] {
        viewState.value.currentEntities
    }

    var movieCells: [SavedMovieCellViewModelProtocol] {
        movies.compactMap { SavedMovieCellViewModel($0) }
    }

    var needsPrefetch: Bool {
        viewState.value.needsPrefetch
    }

    var displayTitle: String?

    // MARK: - Initializers

    init(interactor: SavedMoviesInteractorProtocol) {
        self.interactor = interactor
    }

    // MARK: - SavedMoviesViewModelProtocol

    func movie(at index: Int) -> Movie {
        movies[index]
    }

    func getCollectionList() {
        let showLoader = viewState.value.isInitialPage
        fetchCollectionList(page: viewState.value.currentPage, showLoader: showLoader)
    }

    func refreshCollectionList() {
        fetchCollectionList(page: 1, showLoader: false)
    }

    // MARK: - Private

    private func fetchCollectionList(page: Int, showLoader: Bool) {
        startLoading.value = showLoader
        interactor.getSavedMovies(page: page) { result in
            self.startLoading.value = false
            switch result {
            case .success(let movies):
                self.viewState.value = self.processResult(movies,
                                                          currentPage: page,
                                                          currentEntities: self.movies)
            case .failure(let error):
                self.viewState.value = .error(error)
            }
        }
    }

}
