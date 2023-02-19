//
//  MoviesByGenreCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit
import UpcomingMoviesDomain

final class MoviesByGenreCoordinator: BaseCoordinator, MovieListCoordinatorProtocol, MovieDetailCoordinable {

    private let genreId: Int
    private let genreName: String

    init(navigationController: UINavigationController, genreId: Int, genreName: String) {
        self.genreId = genreId
        self.genreName = genreName
        super.init(navigationController: navigationController)
    }

    override func start() {
        let viewController = MovieListViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(name: "MoviesByGenre",
                                                              arguments: genreId, genreName)
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

}
