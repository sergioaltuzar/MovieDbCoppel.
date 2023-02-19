//
//  SplashInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct SplashInteractor: SplashInteractorProtocol {

    private let genreUseCase: GenreUseCaseProtocol
    private let configurationUseCase: ConfigurationUseCaseProtocol

    init(useCaseProvider: UseCaseProviderProtocol) {
        self.genreUseCase = useCaseProvider.genreUseCase()
        self.configurationUseCase = useCaseProvider.configurationUseCase()
    }

    // MARK: - SplashInteractorProtocol

    func getAppConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void) {
        configurationUseCase.getConfiguration(completion: completion)
    }

    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void) {
        genreUseCase.fetchAll(completion: completion)
    }

}
