//
//  UserLocalDataSource.swift
//  CoreDataInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain
import UpcomingMoviesData

final class UserLocalDataSource: UserLocalDataSourceProtocol {

    private let store: PersistenceStore<CDUser>

    var didUpdateUser: (() -> Void)?

    // MARK: - Initializers

    init(store: PersistenceStore<CDUser>) {
        self.store = store
        self.store.configureResultsContoller(sortDescriptors: CDUser.defaultSortDescriptors,
                                             notifyChangesOn: [.insert])
        self.store.delegate = self
    }

    // MARK: - UserLocalDataSourceProtocol

    func find(with id: Int) -> User? {
        store.find(with: id)?.asDomain()
    }

    func saveUser(_ user: User) {
        self.store.saveUser(user)
    }

}

// MARK: - PersistenceStoreDelegate

extension UserLocalDataSource: PersistenceStoreDelegate {

    func persistenceStore(willUpdateEntity shouldPrepare: Bool) {}

    func persistenceStore(didUpdateEntity update: Bool) {
        didUpdateUser?()
    }

}
