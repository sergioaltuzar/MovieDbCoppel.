//
//  MainTabBarBuilder.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit
import UpcomingMoviesDomain

struct RootCoordinatorIdentifier {
    static let upcomingMovies = "Movies"
    static let searchMovies = "search"
    static let account = "account"
}

final class MainTabBarBuilder {

    class func buildViewCoordinators() -> [RootCoordinator] {

        let upcomingMoviesNavigationController = createNavigationController(title: "Movies", image: #imageLiteral(resourceName: "Movies"))
        let upcomingMoviesCoordinator = UpcomingMoviesCoordinator(navigationController: upcomingMoviesNavigationController)
        upcomingMoviesCoordinator.start()

        let searchMoviesNavigationController = createNavigationController(title: "Search", image: #imageLiteral(resourceName: "Search"))
        let searchMoviesCoordinator = SearchMoviesCoordinator(navigationController: searchMoviesNavigationController)
        searchMoviesCoordinator.start()

        let accountNavigationController = createNavigationController(title: "Account", image: #imageLiteral(resourceName: "Account"))
        let accountCoordinator = AccountCoordinator(navigationController: accountNavigationController)
        accountCoordinator.start()

        return [
            upcomingMoviesCoordinator,
            searchMoviesCoordinator,
            accountCoordinator
        ]
    }

    class func createNavigationController(title: String, image: UIImage) -> UINavigationController {
        let navController = UINavigationController()
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image

        return navController
    }

}
