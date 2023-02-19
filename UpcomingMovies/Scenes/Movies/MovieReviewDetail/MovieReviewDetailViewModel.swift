//
//  MovieReviewDetailViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

struct MovieReviewDetailViewModel: MovieReviewDetailViewModelProtocol {

    let author: String
    let content: String

    init(review: Review) {
        self.author = review.authorName
        self.content = review.content
    }

}
