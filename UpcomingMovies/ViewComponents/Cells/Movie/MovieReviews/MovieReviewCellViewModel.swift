//
//  MovieReviewCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieReviewCellViewModelProtocol {

    var authorName: String { get }
    var content: String { get }

}

final class MovieReviewCellViewModel: MovieReviewCellViewModelProtocol {

    let authorName: String
    let content: String

    init(_ review: Review) {
        self.authorName = review.authorName
        self.content = review.content
    }

}
