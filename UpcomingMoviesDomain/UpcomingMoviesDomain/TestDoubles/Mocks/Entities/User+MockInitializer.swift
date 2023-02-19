//
//  User+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public extension User {

    static func with(id: Int = 1,
                     name: String = "Test",
                     username: String = "Username",
                     includeAdult: Bool = false) -> User {
        User(id: id, name: name, username: username, includeAdult: includeAdult)
    }

}
