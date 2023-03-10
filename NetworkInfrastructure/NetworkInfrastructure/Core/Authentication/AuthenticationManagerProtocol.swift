//
//  AuthenticationManagerProtocol.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

protocol AuthenticationManagerProtocol {

    var readAccessToken: String { get }

    func saveCurrentUser(_ sessionId: String, accountId: Int)
    func deleteCurrentUser()

    func saveRequestToken(_ requestToken: String)
    var requestToken: String? { get }

    func saveAccessToken(_ accessToken: AccessToken)
    var accessToken: AccessToken? { get }

    var userAccount: Account? { get }

}
