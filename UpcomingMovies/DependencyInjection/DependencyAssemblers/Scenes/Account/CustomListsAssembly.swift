//
//  CustomListsAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Swinject
import UpcomingMoviesDomain

final class CustomListsAssembly: Assembly {

    func assemble(container: Container) {
        container.register(CustomListsInteractorProtocol.self) { resolver in
            guard let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self) else {
                fatalError("UseCaseProviderProtocol dependency could not be resolved")
            }
            return CustomListsInteractor(useCaseProvider: useCaseProvider)
        }

        container.register(CustomListsViewModelProtocol.self) { resolver in
            guard let interactor = resolver.resolve(CustomListsInteractorProtocol.self) else {
                fatalError("CustomListsInteractorProtocol dependency could not be resolved")
            }
            return CustomListsViewModel(interactor: interactor)
        }
    }

}
