//
//  RetryActionable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol RetryActionable {

    var retry: (() -> Void)? { get set }

    func resetState()

}
