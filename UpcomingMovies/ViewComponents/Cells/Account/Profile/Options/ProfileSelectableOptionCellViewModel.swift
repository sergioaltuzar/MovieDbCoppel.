//
//  ProfileSelectableOptionCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol ProfileSelectableOptionCellViewModelProtocol {

    var title: String? { get }

}

final class ProfileSelectableOptionCellViewModel: ProfileSelectableOptionCellViewModelProtocol {

    let title: String?

    init(_ profileCollectionOption: ProfileOptionProtocol) {
        self.title = profileCollectionOption.title
    }

}
