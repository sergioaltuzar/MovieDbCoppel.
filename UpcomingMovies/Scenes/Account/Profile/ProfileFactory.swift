//
//  ProfileFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

final class ProfileFactory: ProfileFactoryProtocol {

    var sections: [ProfileSection] {
        [
            .accountInfo,
            .collections,
            .recommended,
            .customLists,
            .signOut
        ]
    }

    func profileOptions(for section: ProfileSection) -> [ProfileOptionProtocol] {
        switch section {
        case .accountInfo, .signOut:
            return []
        case .collections:
            return [ProfileOption.favorites, ProfileOption.watchlist]
        case .recommended:
            return [ProfileOption.recommended]
        case .customLists:
            return [ProfileOption.customLists]
        }
    }

}
