//
//  PersistenceStore+MovieSearch.swift
//  CoreDataInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

extension PersistenceStore where Entity == CDMovieSearch {

    func saveMovieSearch(with searchText: String, completion: ((Bool) -> Void)? = nil) {
        managedObjectContext.performChanges {
            _ = CDMovieSearch.insert(into: self.managedObjectContext,
                                     searchText: searchText)
            completion?(true)
        }
    }

    func findAll() -> [CDMovieSearch] {
        CDMovieSearch.fetch(in: managedObjectContext)
    }

}
