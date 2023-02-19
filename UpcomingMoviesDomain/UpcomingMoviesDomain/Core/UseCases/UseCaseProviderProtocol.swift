//
//  UseCaseProviderProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol UseCaseProviderProtocol {

    func movieUseCase() -> MovieUseCaseProtocol
    func genreUseCase() -> GenreUseCaseProtocol
    func movieVisitUseCase() -> MovieVisitUseCaseProtocol
    func movieSearchUseCase() -> MovieSearchUseCaseProtocol
    func userUseCase() -> UserUseCaseProtocol
    func accountUseCase() -> AccountUseCaseProtocol
    func authUseCase() -> AuthUseCaseProtocol
    func configurationUseCase() -> ConfigurationUseCaseProtocol

}
