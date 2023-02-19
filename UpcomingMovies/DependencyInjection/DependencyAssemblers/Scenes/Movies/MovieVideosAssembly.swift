//
//  MovieVideosAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Swinject
import UpcomingMoviesDomain

final class MovieVideosAssembly: Assembly {

    func assemble(container: Container) {
        container.register(MovieVideosInteractorProtocol.self) { resolver in
            guard let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self) else {
                fatalError("UseCaseProviderProtocol dependency could not be resolved")
            }
            return MovieVideosInteractor(movieUseCase: useCaseProvider.movieUseCase())
        }

        container.register(MovieVideosViewModelProtocol.self) { (resolver, movieId: Int, movieTitle: String) in
            guard let interactor = resolver.resolve(MovieVideosInteractorProtocol.self) else {
                fatalError("MovieVideosInteractorProtocol dependency could not be resolved")
            }
            return MovieVideosViewModel(movieId: movieId,
                                        movieTitle: movieTitle,
                                        interactor: interactor)
        }
    }

}
