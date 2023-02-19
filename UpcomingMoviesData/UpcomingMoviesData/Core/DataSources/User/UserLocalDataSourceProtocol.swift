//
//  UserLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

public protocol UserLocalDataSourceProtocol: AnyObject {

    var didUpdateUser: (() -> Void)? { get set }

    func find(with id: Int) -> User?
    func saveUser(_ user: User)

}
