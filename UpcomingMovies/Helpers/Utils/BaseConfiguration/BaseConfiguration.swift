//
//  BaseConfiguration.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

struct BaseConfiguration: Decodable {

    struct Keys: Decodable {

        let readAccessToken: String
        let apiKey: String

        private enum CodingKeys: String, CodingKey {
            case readAccessToken = "ReadAccessToken"
            case apiKey = "ApiKey"
        }

    }

    let keys: Keys

    private enum CodingKeys: String, CodingKey {
        case keys = "TheMovieDb"
    }

}
