//
//  Array+MidElement.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

extension Array {

    var mid: Element? {
        guard count != 0 else { return nil }

        let midIndex = (count > 1 ? count - 1 : count) / 2
        return self[midIndex]
    }

}
