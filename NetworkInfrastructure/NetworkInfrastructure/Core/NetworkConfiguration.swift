//
//  NetworkConfiguration.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//

final class NetworkConfiguration {

    static let shared = NetworkConfiguration()

    private(set) var apiKey = ""
    private(set) var readAccessToken = ""

    var baseAPIURLString: String {
        "https://api.themoviedb.org"
    }

    private init() {}

    func configure(with apiKey: String, and readAccessToken: String) {
        self.apiKey = apiKey
        self.readAccessToken = readAccessToken
    }

}
