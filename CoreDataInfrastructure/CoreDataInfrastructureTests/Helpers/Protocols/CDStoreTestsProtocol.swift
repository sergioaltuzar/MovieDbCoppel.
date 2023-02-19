//
//  CDStoreTestsProtocol.swift
//  CoreDataInfrastructure-Unit-CoreDataInfrastructureTests
//
//  Created by Sergio on 2/16/23.
//

@testable import CoreDataInfrastructure
@testable import UpcomingMoviesDomain
import CoreData

protocol CDStoreTestsProtocol {
    associatedtype CDEntity: NSManagedObject & Managed

    var storeToTest: PersistenceStore<CDEntity>! { get }
    var mockPersistantContainer: NSPersistentContainer! { get }

    func flush() throws
}

extension CDStoreTestsProtocol {
    func flush() throws {
        guard let context = mockPersistantContainer?.viewContext else { return }
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest<NSFetchRequestResult>(entityName: CDEntity.entityName)
        let objs = try context.fetch(fetchRequest)
        for case let obj as NSManagedObject in objs {
            context.delete(obj)
        }
        try context.save()
    }
}
