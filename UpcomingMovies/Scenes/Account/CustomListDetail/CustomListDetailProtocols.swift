//
//  CustomListDetailProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol CustomListDetailViewModelProtocol {

    var listName: String? { get }
    var viewState: AnyBehaviorBindable<CustomListDetailViewState> { get }
    var movieCells: [MovieCellViewModel] { get }

    func buildHeaderViewModel() -> CustomListDetailHeaderViewModelProtocol
    func buildSectionViewModel() -> CustomListDetailSectionViewModel

    func movie(at index: Int) -> Movie

    func getListMovies()

}

protocol CustomListDetailInteractorProtocol {

    func getCustomListMovies(listId: String, completion: @escaping (Result<[Movie], Error>) -> Void)

}

protocol CustomListDetailCoordinatorProtocol: AnyObject {

    func showMovieDetail(for movie: Movie)

}
