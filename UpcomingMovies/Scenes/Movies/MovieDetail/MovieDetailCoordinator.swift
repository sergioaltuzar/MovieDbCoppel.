//
//  MovieDetailCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

enum MovieDetailInfo {

    case complete(movie: Movie)
    case partial(movieId: Int, movieTitle: String)

}

final class MovieDetailCoordinator: BaseCoordinator, MovieDetailCoordinatorProtocol {

    private let movieInfo: MovieDetailInfo

    // MARK: - Initializers

    init(navigationController: UINavigationController, movieInfo: MovieDetailInfo) {
        self.movieInfo = movieInfo
        super.init(navigationController: navigationController)
    }

    // MARK: - MovieDetailCoordinatorProtocol

    override func start() {
        let viewController = MovieDetailViewController.instantiate()

        viewController.viewModel = viewModel(for: movieInfo)
        viewController.userInterfaceHelper = DIContainer.shared.resolve()
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

    // MARK: - MovieDetailCoordinatorProtocol

    func showMovieOption(_ option: MovieDetailOption) {
        switch option {
        case .credits: showMovieCredits()
        case .reviews: showMovieReviews()
        case .trailers: showMovieVideos()
        case .similarMovies: showSimilarMovies()
        }
    }

    func showSharingOptions(withShareTitle title: String) {
        let activityViewController = UIActivityViewController(activityItems: [title],
                                                              applicationActivities: nil)
        navigationController.present(activityViewController, animated: true, completion: nil)
    }

    // MARK: - Private

    private func showMovieVideos() {
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)

        let coordinator = MovieVideosCoordinator(navigationController: navigationController, movieId: movieInfo.id, movieTitle: movieInfo.title)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

    private func showMovieCredits() {
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)

        let coordinator = MovieCreditsCoordinator(navigationController: navigationController, movieId: movieInfo.id, movieTitle: movieInfo.title)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

    private func showMovieReviews() {
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)

        let coordinator = MovieReviewsCoordinator(navigationController: navigationController,
                                                  movieId: movieInfo.id,
                                                  movieTitle: movieInfo.title)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

    private func showSimilarMovies() {
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)

        let coordinator = SimilarMoviesCoordinator(navigationController: navigationController, movieId: movieInfo.id)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

    private func viewModel(for movieInfo: MovieDetailInfo) -> MovieDetailViewModelProtocol {
        switch movieInfo {
        case .complete(let movie):
            return DIContainer.shared.resolve(argument: movie)
        case .partial(let movieId, let movieTitle):
            return DIContainer.shared.resolve(arguments: movieId, movieTitle)
        }
    }

    private func getMoviePartialInfo(for movieInfo: MovieDetailInfo) -> (id: Int, title: String) {
        switch movieInfo {
        case .complete(let movie):
            return (movie.id, movie.title)
        case .partial(let movieId, let movieTitle):
            return (movieId, movieTitle)
        }
    }

}
