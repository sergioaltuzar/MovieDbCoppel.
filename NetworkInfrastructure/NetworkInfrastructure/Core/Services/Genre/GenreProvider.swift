//
//  GenreProvider.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

enum GenreProvider {

    case getAll

}

// MARK: - Endpoint

extension GenreProvider: Endpoint {

    var base: String {
        NetworkConfiguration.shared.baseAPIURLString
    }

    var path: String {
        switch self {
        case .getAll:
            return "/3/genre/movie/list"
        }
    }

    var headers: [String: String]? {
        nil
    }

    var params: [String: Any]? {
        switch self {
        case .getAll:
            return nil
        }
    }

    var parameterEncoding: ParameterEnconding {
        .defaultEncoding
    }

    var method: HTTPMethod {
        switch self {
        case .getAll:
            return .get
        }
    }

}
