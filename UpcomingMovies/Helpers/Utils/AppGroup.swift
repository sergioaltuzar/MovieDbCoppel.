//
//  AppGroup.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

enum AppGroup: String, CaseIterable {

    case movies = "group.movies.extension"

    static var allCasesIdentifiers: [String] {
        AppGroup.allCases.map { $0.rawValue }
    }

}
