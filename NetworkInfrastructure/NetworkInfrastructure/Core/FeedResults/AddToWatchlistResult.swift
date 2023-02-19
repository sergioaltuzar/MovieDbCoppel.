//
//  AddToWatchlistResult.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//

struct AddToWatchlistResult: Decodable {

    let statusCode: Int
    let statusMessage: String

    private enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }

}
