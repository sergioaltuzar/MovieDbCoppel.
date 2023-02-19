//
//  AccessToken.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

struct AccessToken: Decodable {

    let token: String
    let accountId: String

    private enum CodingKeys: String, CodingKey {
        case token = "access_token"
        case accountId = "account_id"
    }

}
