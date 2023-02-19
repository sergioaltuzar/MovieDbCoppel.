//
//  DomainConvertible.swift
//  CoreDataInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol DomainConvertible {

    associatedtype Domain

    func asDomain() -> Domain

}
