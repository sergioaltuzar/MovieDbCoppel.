//
//  AuthenticationManagerProtocolMock.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//

final class AuthenticationManagerProtocolMock: AuthenticationManagerProtocol {

    var readAccessToken: String = ""
    var accessToken: AccessToken?
    var userAccount: Account?
    var requestToken: String?

    private(set) var saveCurrentUserCallCount = 0
    func saveCurrentUser(_ sessionId: String, accountId: Int) {
        saveCurrentUserCallCount += 1
    }

    private(set) var deleteCurrentUserCallCount = 0
    func deleteCurrentUser() {
        deleteCurrentUserCallCount += 1
    }

    private(set) var ssaveRequestTokenCallCount = 0
    func saveRequestToken(_ requestToken: String) {
        ssaveRequestTokenCallCount += 1
    }

    private(set) var saveAccessTokenCallCount = 0
    func saveAccessToken(_ accessToken: AccessToken) {
        saveAccessTokenCallCount += 1
    }

}
