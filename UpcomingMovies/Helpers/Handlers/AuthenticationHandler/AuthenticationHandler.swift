//
//  AuthenticationManager.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

final class AuthenticationHandler: AuthenticationHandlerProtocol {

    private let authUseCase: AuthUseCaseProtocol
    private let userUseCase: UserUseCaseProtocol

    // MARK: - Initializers

    init(authUseCase: AuthUseCaseProtocol, userUseCase: UserUseCaseProtocol) {
        self.authUseCase = authUseCase
        self.userUseCase = userUseCase
    }

    // MARK: - Authentitacion Persistence

    func currentUser() -> User? {
        guard let userId = authUseCase.currentUserId() else { return nil }
        return userUseCase.find(with: userId)
    }

    func isUserSignedIn() -> Bool {
        currentUser() != nil
    }

    func deleteCurrentUser() {
        authUseCase.signOutUser(completion: { _ in })
    }

}
