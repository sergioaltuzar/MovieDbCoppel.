//
//  Review+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public extension Review {

    static func with(id: String = "1",
                     authorName: String = "ABC",
                     content: String = "Video1") -> Review {
        Review(id: id, authorName: authorName, content: content)
    }

}
