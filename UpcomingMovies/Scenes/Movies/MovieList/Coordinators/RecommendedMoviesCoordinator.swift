//
//  RecommendedMoviesCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

final class RecommendedMoviesCoordinator: BaseCoordinator, MovieListCoordinatorProtocol, MovieDetailCoordinable {

    override func start() {
        let viewController = MovieListViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(name: "RecommendedMovies",
                                                              argument: LocalizedStrings.movieListRecommendationsTitle())
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

}
