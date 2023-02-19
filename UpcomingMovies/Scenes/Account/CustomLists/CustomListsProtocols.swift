//
//  CustomListsProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol CustomListsViewModelProtocol {

    var startLoading: AnyBehaviorBindable<Bool> { get }
    var viewState: AnyBehaviorBindable<CustomListsViewState> { get }

    var lists: [List] { get }
    var listCells: [CustomListCellViewModelProtocol] { get }

    func list(at index: Int) -> List

    func getCustomLists()
    func refreshCustomLists()

}

protocol CustomListsInteractorProtocol {

    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void)

}

protocol CustomListsCoordinatorProtocol: Coordinator {

    func showListDetail(for customList: List)

}
