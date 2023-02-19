//
//  SimilarMoviesCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

final class SimilarMoviesCoordinator: BaseCoordinator, MovieListCoordinatorProtocol, MovieDetailCoordinable {

    private let movieId: Int

    init(navigationController: UINavigationController, movieId: Int) {
        self.movieId = movieId
        super.init(navigationController: navigationController)
    }

    override func start() {
        let viewController = MovieListViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(name: "SimilarMovies",
                                                              arguments: LocalizedStrings.similarMoviesTitle.localized, movieId)
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

}
