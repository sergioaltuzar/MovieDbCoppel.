//
//  RequestTokenResult.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

struct RequestTokenResult: Decodable {

    let success: Bool
    let token: String

    private enum CodingKeys: String, CodingKey {
        case success
        case token = "request_token"
    }

}
