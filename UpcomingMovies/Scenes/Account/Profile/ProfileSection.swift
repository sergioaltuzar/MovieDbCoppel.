//
//  ProfileSection.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

enum ProfileSection {
    /// Section to show the profile user info
    case accountInfo

    /// Shows the user's collections like favorites
    case collections

    /// Shows the user's recommended movies
    case recommended

    /// Shows the user's custom lists
    case customLists

    /// Shows the sign out Button
    case signOut
}
