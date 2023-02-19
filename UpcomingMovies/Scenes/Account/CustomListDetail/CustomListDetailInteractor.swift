//
//  CustomListDetailInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

final class CustomListDetailInteractor: CustomListDetailInteractorProtocol {

    private let accountUseCase: AccountUseCaseProtocol

    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }

    func getCustomListMovies(listId: String, completion: @escaping (Result<[Movie], Error>) -> Void) {
        accountUseCase.getCustomListMovies(listId: listId, completion: completion)
    }

}
