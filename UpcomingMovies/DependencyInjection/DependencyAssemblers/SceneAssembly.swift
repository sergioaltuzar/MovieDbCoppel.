//
//  SceneAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Swinject

final class SceneAssembly: Assembly {

    func assemble(container: Container) {
        let assemblies: [Assembly] = [
            SplashAssembly(),
            AccountAssembly(),
            AuthenticationAssembly(),
            ProfileAssembly(),
            SavedMoviesAssembly(),
            CustomListsAssembly(),
            CustomListDetailAssembly(),
            UpcomingMoviesAssembly(),
            MovieDetailAssembly(),
            SearchMoviesAssembly(),
            MovieListAssembly(),
            MovieCreditsAssembly(),
            MovieVideosAssembly(),
            MovieReviewsAssembly(),
            MovieReviewDetailAssembly()
        ]
        assemblies.forEach { $0.assemble(container: container) }
    }

}
