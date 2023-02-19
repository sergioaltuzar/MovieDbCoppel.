//
//  Video.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

public struct Video {

    public let id: String
    public let key: String
    public let name: String
    public let site: String
    public let browserURL: URL?
    public let deepLinkURL: URL?
    public let thumbnailURL: URL?

    public init(id: String, key: String, name: String, site: String,
                browserURL: URL?, deepLinkURL: URL?, thumbnailURL: URL?) {
        self.id = id
        self.key = key
        self.name = name
        self.site = site
        self.browserURL = browserURL
        self.deepLinkURL = deepLinkURL
        self.thumbnailURL = thumbnailURL
    }

}

extension Video: Equatable {

    public static func == (lhs: Video, rhs: Video) -> Bool {
        lhs.id == rhs.id
    }

}
