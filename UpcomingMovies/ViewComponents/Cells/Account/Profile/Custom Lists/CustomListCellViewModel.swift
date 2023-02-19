//
//  CustomListCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol CustomListCellViewModelProtocol {

    var name: String { get }
    var description: String? { get }
    var movieCount: Int { get }

}

final class CustomListCellViewModel: CustomListCellViewModelProtocol {

    let name: String
    let description: String?
    let movieCount: Int

    init(_ list: List) {
        self.name = list.name
        self.description = list.description
        self.movieCount = list.movieCount
    }

}
