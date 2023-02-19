//
//  MovieReviewsProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

protocol MovieReviewsViewModelProtocol {

    var movieTitle: String { get set }

    var viewState: AnyBehaviorBindable<MovieReviewsViewState> { get }
    var startLoading: AnyBehaviorBindable<Bool> { get }

    var reviewCells: [MovieReviewCellViewModelProtocol] { get }
    var needsPrefetch: Bool { get }

    func selectedReview(at index: Int) -> Review

    func getMovieReviews()
    func refreshMovieReviews()

}

protocol MovieReviewsInteractorProtocol {

    func getMovieReviews(for movieId: Int, page: Int?,
                         completion: @escaping (Result<[Review], Error>) -> Void)

}

protocol MovieReviewsCoordinatorProtocol: AnyObject {

    func showReviewDetail(for review: Review, transitionView: UIView?)

}
