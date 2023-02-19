//
//  MovieDetailCoordinable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

protocol MovieDetailCoordinable {

    func showMovieDetail(for movie: Movie)

}

extension MovieDetailCoordinable where Self: Coordinator {

    func showMovieDetail(for movie: Movie) {
        let movieInfo = MovieDetailInfo.complete(movie: movie)

        let coordinator = MovieDetailCoordinator(navigationController: navigationController, movieInfo: movieInfo)
        coordinator.parentCoordinator = unwrappedParentCoordinator

        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }

}
