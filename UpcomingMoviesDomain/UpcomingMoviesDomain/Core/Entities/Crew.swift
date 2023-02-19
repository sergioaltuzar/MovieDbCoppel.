//
//  Crew.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public struct Crew: Equatable {

    public let id: Int
    public let job: String
    public let name: String
    public let photoPath: String?

    public init(id: Int, job: String, name: String, photoPath: String?) {
        self.id = id
        self.job = job
        self.name = name
        self.photoPath = photoPath
    }

}
