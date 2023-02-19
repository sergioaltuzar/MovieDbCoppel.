//
//  Paginable.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol Paginable {

    var currentPage: Int { get set }
    var totalPages: Int { get set }

}

extension Paginable {

    var hasMorePages: Bool {
        currentPage < totalPages
    }

    var nextPage: Int {
        hasMorePages ? currentPage + 1 : currentPage
    }

}
