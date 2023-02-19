//
//  CustomListDetailHeaderViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol CustomListDetailHeaderViewModelProtocol {

    var name: String { get }
    var description: String? { get }
    var posterURL: URL? { get }

}

struct CustomListDetailHeaderViewModel: CustomListDetailHeaderViewModelProtocol {

    let name: String
    let description: String?
    let posterURL: URL?

    init(list: List) {
        self.name = list.name
        self.description = list.description
        self.posterURL = list.backdropURL
    }

}
