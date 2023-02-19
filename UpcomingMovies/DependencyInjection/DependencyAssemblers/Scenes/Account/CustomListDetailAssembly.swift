//
//  CustomListDetailAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Swinject
import UpcomingMoviesDomain

final class CustomListDetailAssembly: Assembly {

    func assemble(container: Container) {
        container.register(CustomListDetailInteractorProtocol.self) { resolver in
            guard let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self) else {
                fatalError("UseCaseProviderProtocol dependency could not be resolved")
            }
            return CustomListDetailInteractor(useCaseProvider: useCaseProvider)
        }

        container.register(CustomListDetailViewModelProtocol.self) { (resolver, list: List) in
            guard let interactor = resolver.resolve(CustomListDetailInteractorProtocol.self) else {
                fatalError("CustomListDetailInteractorProtocol dependency could not be resolved")
            }
            return CustomListDetailViewModel(list, interactor: interactor)
        }
    }

}
