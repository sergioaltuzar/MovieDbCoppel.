//
//  CDMovieSearch.swift
//  CoreDataInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import CoreData
import UpcomingMoviesDomain

final class CDMovieSearch: NSManagedObject {

    @NSManaged private(set) var id: String
    @NSManaged private(set) var searchText: String
    @NSManaged private(set) var createdAt: Date

    static func insert(into context: NSManagedObjectContext, searchText: String) -> CDMovieSearch {
        let movieSearch: CDMovieSearch = context.insertObject()
        movieSearch.id = UUID().uuidString
        movieSearch.searchText = searchText
        movieSearch.createdAt = Date()
        return movieSearch
    }

}

extension CDMovieSearch: DomainConvertible {

    func asDomain() -> MovieSearch {
        MovieSearch(id: id, searchText: searchText, createdAt: createdAt)
    }

}

extension CDMovieSearch: Managed {

    static var defaultSortDescriptors: [NSSortDescriptor] {
        [NSSortDescriptor(key: #keyPath(createdAt), ascending: false)]
    }

}
