//
//  CustomListDetailCoordinator.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

final class CustomListDetailCoordinator: BaseCoordinator, CustomListDetailCoordinatorProtocol, MovieDetailCoordinable {

    private let customList: List

    init(navigationController: UINavigationController, customList: List) {
        self.customList = customList
        super.init(navigationController: navigationController)
    }

    override func start() {
        let viewController = CustomListDetailViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(argument: customList)
        viewController.coordinator = self

        navigationController.pushViewController(viewController, animated: true)
    }

}
