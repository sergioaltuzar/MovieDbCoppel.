//
//  UserUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol UserUseCaseProtocol {

    var didUpdateUser: (() -> Void)? { get set }

    func find(with id: Int) -> User?
    func saveUser(_ user: User)

}
