//
//  CoreDataStackProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import CoreData

protocol CoreDataStackProtocol {

    var persistentContainer: NSPersistentContainer { get }

    func setExtensionPersistentStoreDescriptions(_ groupExtensionIds: [String])

}
