//
//  MovieReviewDetailProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol MovieReviewDetailViewModelProtocol {

    var author: String { get }
    var content: String { get }

}

protocol MovieReviewDetailCoordinatorProtocol: AnyObject {

    func dismiss()

}
