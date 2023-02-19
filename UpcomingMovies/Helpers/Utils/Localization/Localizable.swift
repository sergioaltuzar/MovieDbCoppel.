//
//  Localizable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol Localizable {

    var tableName: String { get }
    var localized: String { get }

}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {

    var tableName: String {
        "Localizable"
    }

    var localized: String {
        rawValue.localized(tableName: tableName)
    }

    func callAsFunction() -> String {
        self.localized
    }

}
