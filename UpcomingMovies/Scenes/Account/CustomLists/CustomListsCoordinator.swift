//
//  CustomListsCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

final class CustomListsCoordinator: BaseCoordinator, CustomListsCoordinatorProtocol {

    override func start() {
        let viewController = CustomListsViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve()
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

    func showListDetail(for customList: List) {
        let coordinator = CustomListDetailCoordinator(navigationController: navigationController, customList: customList)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

}
