//
//  SavedMoviesCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

final class FavoritesSavedMoviesCoordinator: BaseCoordinator, SavedMoviesCoordinatorProtocol, MovieDetailCoordinable {

    override func start() {
        let viewController = SavedMoviesViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(argument: ProfileOption.favorites.title)
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

}

final class WatchlistSavedMoviesCoordinator: BaseCoordinator, SavedMoviesCoordinatorProtocol, MovieDetailCoordinable {

    override func start() {
        let viewController = SavedMoviesViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(argument: ProfileOption.watchlist.title)
        viewController.coordinator = self

        if navigationController.delegate == nil {
            navigationController.delegate = self
        }
        navigationController.pushViewController(viewController, animated: true)
    }

}
