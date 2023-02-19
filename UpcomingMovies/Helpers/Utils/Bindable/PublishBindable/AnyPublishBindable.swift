//
//  AnyPublishBindable.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Dispatch

final class AnyPublishBindable<T>: PublishBindableProtocol {

    typealias Model = T
    typealias Listener = ((T) -> Void)

    private let sendClosure: ((T) -> Void)
    private let bindClosure: ((@escaping Listener, DispatchQueue?) -> Void)

    init<B: PublishBindableProtocol>(_ bindable: B) where B.Model == T {
        self.sendClosure = bindable.send
        self.bindClosure = bindable.bind
    }

    func bind(_ listener: @escaping Listener, on dispatchQueue: DispatchQueue? = nil) {
        bindClosure(listener, dispatchQueue)
    }

    func send(_ value: T) {
        sendClosure(value)
    }

}

extension AnyPublishBindable where T == Void {

    func send() {
        sendClosure(())
    }

}
