//
//  AuthenticationAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Swinject

final class AuthenticationAssembly: Assembly {

    func assemble(container: Container) {
        container.register(AuthPermissionViewModelProtocol.self) { (_, authPermissionURL: URL) in
            AuthPermissionViewModel(authPermissionURL: authPermissionURL)
        }
    }

}
