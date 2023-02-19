//
//  MovieCreditsAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class MovieCreditsAssembly: Assembly {

    func assemble(container: Container) {
        container.register(MovieCreditsFactoryProtocol.self) { _ in
            MovieCreditsFactory()
        }

        container.register(MovieCreditsInteractorProtocol.self) { resolver in
            guard let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self) else {
                fatalError("UseCaseProviderProtocol dependency could not be resolved")
            }
            return MovieCreditsInteractor(movieUseCase: useCaseProvider.movieUseCase())
        }

        container.register(MovieCreditsViewModelProtocol.self) { (resolver, movieId: Int, movieTitle: String) in
            guard let factory = resolver.resolve(MovieCreditsFactoryProtocol.self) else {
                fatalError("MovieCreditsFactoryProtocol dependency could not be resolved")
            }
            guard let interactor = resolver.resolve(MovieCreditsInteractorProtocol.self) else {
                fatalError("MovieCreditsInteractorProtocol dependency could not be resolved")
            }
            return MovieCreditsViewModel(movieId: movieId, movieTitle: movieTitle,
                                         interactor: interactor, factory: factory)
        }
    }

}
