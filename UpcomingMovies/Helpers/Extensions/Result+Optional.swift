//
//  Result+Optional.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation

extension Result {

    var wrappedValue: Success? {
        try? get()
    }

}
