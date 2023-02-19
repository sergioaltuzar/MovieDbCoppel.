//
//  UpcomingMovieCollectionViewCellProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

protocol UpcomingMovieCollectionViewCellProtocol {

    var posterImageView: UIImageView! { get }
    var viewModel: UpcomingMovieCellViewModelProtocol? { get set }

}
