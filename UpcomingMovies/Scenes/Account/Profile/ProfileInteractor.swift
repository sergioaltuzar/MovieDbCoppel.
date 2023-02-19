//
//  ProfileInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class ProfileInteractor: ProfileInteractorProtocol {

    private let userUseCase: UserUseCaseProtocol
    private let accountUseCase: AccountUseCaseProtocol

    init(useCaseProvider: UseCaseProviderProtocol) {
        self.userUseCase = useCaseProvider.userUseCase()
        self.accountUseCase = useCaseProvider.accountUseCase()
    }

    // TODO: - Change this method to get the account detail given the id of a user account
    func getAccountDetail(completion: @escaping (Result<User, Error>) -> Void) {
        accountUseCase.getAccountDetail(completion: { result in
            switch result {
            case .success(let user):
                self.userUseCase.saveUser(user)
                completion(.success(user))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }

}
