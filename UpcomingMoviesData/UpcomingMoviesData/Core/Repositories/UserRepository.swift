//
//  UserRepository.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public final class UserRepository: UserUseCaseProtocol {

    private let localDataSource: UserLocalDataSourceProtocol

    public var didUpdateUser: (() -> Void)? {
        didSet {
            self.localDataSource.didUpdateUser = didUpdateUser
        }
    }

    init(localDataSource: UserLocalDataSourceProtocol) {
        self.localDataSource = localDataSource
    }

    public func find(with id: Int) -> User? {
        localDataSource.find(with: id)
    }

    public func saveUser(_ user: User) {
        localDataSource.saveUser(user)
    }

}
