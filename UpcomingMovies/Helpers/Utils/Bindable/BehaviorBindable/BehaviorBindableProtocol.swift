//
//  BehaviorBindableProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Dispatch

protocol BehaviorBindableProtocol: AnyObject {

    associatedtype Model

    var value: Model { get set }

    func bind(_ listener: @escaping ((Model) -> Void), on dispatchQueue: DispatchQueue?)
    func bindAndFire(_ listener: @escaping ((Model) -> Void), on dispatchQueue: DispatchQueue?)

}

extension BehaviorBindableProtocol {

    func eraseToAnyBindable() -> AnyBehaviorBindable<Model> {
        AnyBehaviorBindable(self)
    }

}
