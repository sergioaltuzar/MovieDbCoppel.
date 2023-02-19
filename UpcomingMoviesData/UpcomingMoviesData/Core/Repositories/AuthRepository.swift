//
//  AuthRepository.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class AuthRepository: AuthUseCaseProtocol {

    private let remoteDataSource: AuthRemoteDataSourceProtocol

    init(remoteDataSource: AuthRemoteDataSourceProtocol) {
        self.remoteDataSource = remoteDataSource
    }

    func getAuthURL(completion: @escaping (Result<URL, Error>) -> Void) {
        remoteDataSource.getAuthURL(completion: completion)
    }

    func signInUser(completion: @escaping (Result<User, Error>) -> Void) {
        remoteDataSource.signInUser(completion: completion)
    }

    func signOutUser(completion: @escaping (Result<Bool, Error>) -> Void) {
        remoteDataSource.signOutUser(completion: completion)
    }

    func currentUserId() -> Int? {
        remoteDataSource.currentUserId()
    }

}
