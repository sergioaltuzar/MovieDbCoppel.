//
//  MovieReviewDetailAssembly.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import Swinject
import UpcomingMoviesDomain

final class MovieReviewDetailAssembly: Assembly {

    func assemble(container: Container) {
        container.register(MovieReviewDetailViewModelProtocol.self) { (_, review: Review) in
            MovieReviewDetailViewModel(review: review)
        }
    }

}
