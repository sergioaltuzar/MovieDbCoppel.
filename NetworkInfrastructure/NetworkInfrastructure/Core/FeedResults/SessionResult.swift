//
//  SessionResult.swift
//  UpcomingMovies
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

struct SessionResult: Decodable {

    let success: Bool
    let sessionId: String

    private enum CodingKeys: String, CodingKey {
        case success
        case sessionId = "session_id"
    }

}
