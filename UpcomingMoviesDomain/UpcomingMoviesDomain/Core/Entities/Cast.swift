//
//  Cast.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct Cast: Equatable {

    public let id: Int
    public let character: String
    public let name: String
    public let photoPath: String?

    public init(id: Int, character: String, name: String, photoPath: String?) {
        self.id = id
        self.character = character
        self.name = name
        self.photoPath = photoPath
    }

}
