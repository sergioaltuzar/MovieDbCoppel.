//
//  PublishBindableProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Dispatch

protocol PublishBindableProtocol {

    associatedtype Model

    func bind(_ listener: @escaping ((Model) -> Void), on dispatchQueue: DispatchQueue?)
    func send(_ value: Model)

}

extension PublishBindableProtocol {

    func eraseToAnyBindable() -> AnyPublishBindable<Model> {
        AnyPublishBindable(self)
    }

}
