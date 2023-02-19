//
//  AppExtension.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

struct AppExtension {

    static let scheme = "extension"

    enum Host: String {

        case upcomingMovies = "upcoming"
        case searchMovies = "search"

    }

    static func url(for host: AppExtension.Host) -> URL? {
        let urlString = scheme + "://" + host.rawValue
        return URL(string: urlString)
    }

}
