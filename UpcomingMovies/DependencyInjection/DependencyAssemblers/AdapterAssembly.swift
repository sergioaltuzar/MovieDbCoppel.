//
//  AdapterAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Swinject

final class AdapterAssembly: Assembly {

    func assemble(container: Container) {
        container.register(ProgressHUDAdapterProtocol.self) { _ in
            ProgressHUDAdapter()
        }
    }

}
