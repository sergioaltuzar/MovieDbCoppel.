//
//  HandlerAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UpcomingMoviesDomain
import Swinject

final class HandlerAssembly: Assembly {

    func assemble(container: Container) {
        container.register(AuthenticationHandlerProtocol.self) { resolver in
            guard let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self) else {
                fatalError("UseCaseProviderProtocol dependency could not be resolved")
            }
            return AuthenticationHandler(authUseCase: useCaseProvider.authUseCase(),
                                         userUseCase: useCaseProvider.userUseCase())
        }.inObjectScope(.container)

        container.register(NavigationHandlerProtocol.self) { _ in
            NavigationHandler()
        }.inObjectScope(.container)

        container.register(GenreHandlerProtocol.self) { _ in
            GenreHandler()
        }.inObjectScope(.container)

        container.register(ConfigurationHandlerProtocol.self) { _ in
            ConfigurationHandler()
        }.inObjectScope(.container)

        container.register(UserPreferencesHandlerProtocol.self) { _ in
            UserPreferencesHandler()
        }.inObjectScope(.container)
    }

}
