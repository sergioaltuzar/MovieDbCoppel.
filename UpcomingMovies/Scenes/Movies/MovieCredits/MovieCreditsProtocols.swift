//
//  MovieCreditsProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol MovieCreditsViewModelProtocol {

    var movieTitle: String { get }

    var viewState: AnyBehaviorBindable<MovieCreditsViewState> { get }
    var didToggleSection: AnyPublishBindable<Int> { get }
    var startLoading: AnyBehaviorBindable<Bool> { get }

    func numberOfSections() -> Int
    func numberOfItems(for section: Int) -> Int

    func creditModel(for section: Int, and index: Int) -> MovieCreditCellViewModelProtocol
    func headerModel(for index: Int) -> CollapsibleHeaderViewModel

    func toggleSection(_ section: Int)
    func getMovieCredits(showLoader: Bool)

}

protocol MovieCreditsInteractorProtocol {

    func getMovieCredits(for movieId: Int, page: Int?,
                         completion: @escaping (Result<MovieCredits, Error>) -> Void)

}

protocol MovieCreditsFactoryProtocol {

    var sections: [MovieCreditsCollapsibleSection] { get set }

}

protocol MovieCreditsCoordinatorProtocol: AnyObject {}
