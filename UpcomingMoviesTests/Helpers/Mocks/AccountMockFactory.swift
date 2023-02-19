//
//  AccountMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockAccountInteractor: AccountInteractorProtocol {

    var permissionURLResult: Result<URL, Error>?
    func getAuthPermissionURL(completion: @escaping (Result<URL, Error>) -> Void) {
        completion(permissionURLResult!)
    }

    var signInUserResult: Result<User, Error>?
    func signInUser(completion: @escaping (Result<User, Error>) -> Void) {
        completion(signInUserResult!)
    }

    var currentUserResult: User?
    func currentUser() -> User? {
        currentUserResult
    }

    func signOutUser() {}

}
