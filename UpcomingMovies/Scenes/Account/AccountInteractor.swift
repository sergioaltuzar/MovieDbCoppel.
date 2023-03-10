//
//  AccountInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class AccountInteractor: AccountInteractorProtocol {

    private let userUseCase: UserUseCaseProtocol
    private let authUseCase: AuthUseCaseProtocol
    private let accountUseCase: AccountUseCaseProtocol

    private let authHandler: AuthenticationHandlerProtocol

    init(useCaseProvider: UseCaseProviderProtocol,
         authHandler: AuthenticationHandlerProtocol) {
        self.userUseCase = useCaseProvider.userUseCase()
        self.accountUseCase = useCaseProvider.accountUseCase()
        self.authUseCase = useCaseProvider.authUseCase()
        self.authHandler = authHandler
    }

    func getAuthPermissionURL(completion: @escaping (Result<URL, Error>) -> Void) {
        authUseCase.getAuthURL(completion: completion)
    }

    func signInUser(completion: @escaping (Result<User, Error>) -> Void) {
        authUseCase.signInUser { result in
            switch result {
            case .success(let user):
                self.userUseCase.saveUser(user)
                completion(.success(user))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func signOutUser() {
        authHandler.deleteCurrentUser()
    }

    func currentUser() -> User? {
        authHandler.currentUser()
    }

}
