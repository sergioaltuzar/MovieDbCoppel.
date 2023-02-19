//
//  Data+JSON.swift
//  NetworkInfrastructure-Unit-NetworkInfrastructureTests
//
//  Created by Sergio on 2/16/23.
//

import Foundation

extension Data {

    func json(updatingKeyPaths keyPaths: (String, Any)...) throws -> Data {
        let decoded = try JSONSerialization.jsonObject(with: self, options: .mutableContainers) as AnyObject

        for (keyPath, value) in keyPaths {
            decoded.setValue(value, forKeyPath: keyPath)
        }

        return try JSONSerialization.data(withJSONObject: decoded)
    }

    func json(deletingKeyPaths keyPaths: String...) throws -> Data {
        let decoded = try JSONSerialization.jsonObject(with: self, options: .mutableContainers) as AnyObject

        for keyPath in keyPaths {
            decoded.setValue(nil, forKeyPath: keyPath)
        }

        return try JSONSerialization.data(withJSONObject: decoded)
    }

}
