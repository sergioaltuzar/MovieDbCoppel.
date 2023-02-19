//
//  LocalizationHelper.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

enum Language: String {
    case english = "en"
    case spanish = "es"
}

struct LocalizationHelper {

    static let defaultLanguage: Language = .english

    static func getCurrentLanguageCode() -> String {
        guard let languageCode = Locale.current.languageCode else {
            return defaultLanguage.rawValue
        }
        return Language.init(rawValue: languageCode)?.rawValue ?? defaultLanguage.rawValue
    }

}
