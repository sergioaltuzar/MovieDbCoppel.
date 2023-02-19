//
//  User+MockInitializer.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//

extension User {

    static func create(id: Int = 1,
                       name: String = "Test",
                       username: String = "Username",
                       includeAdult: Bool = false) -> User {
        User(id: id, name: name, username: username, includeAdult: includeAdult)
    }

}
