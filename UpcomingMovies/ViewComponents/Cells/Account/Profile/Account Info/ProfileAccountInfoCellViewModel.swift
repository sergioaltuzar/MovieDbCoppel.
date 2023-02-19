//
//  ProfileAccountInfoCellViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import Foundation
import UpcomingMoviesDomain

protocol ProfileAccountInforCellViewModelProtocol {

    var name: String { get }
    var username: String? { get }

}

final class ProfileAccountInforCellViewModel: ProfileAccountInforCellViewModelProtocol {

    let name: String
    let username: String?

    init(userAccount: User) {
        name = userAccount.name
        username = userAccount.username
    }

}
