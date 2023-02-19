//
//  AuthClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol AuthClientProtocol {

    func getRequestToken(with readAccessToken: String,
                         completion: @escaping (Result<RequestTokenResult, APIError>) -> Void)

    func getAccessToken(with readAccessToken: String,
                        requestToken: String,
                        completion: @escaping (Result<AccessToken, APIError>) -> Void)

    func createSessionId(with accessToken: String,
                         completion: @escaping (Result<SessionResult, APIError>) -> Void)

}
