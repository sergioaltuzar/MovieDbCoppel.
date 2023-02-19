//
//  DefaultSearchOption.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

enum DefaultSearchOption {
    case popular, topRated

    var title: String? {
        switch self {
        case .popular:
            return "Popular movies"
        case .topRated:
            return "Top rated movies"
        }
    }

    var subtitle: String? {
        switch self {
        case .popular:
            return "The hottest movies on the internet"
        case .topRated:
            return "The top rated movies on the internet"
        }
    }

    var icon: UIImage {
        switch self {
        case .popular:
            return #imageLiteral(resourceName: "Popular")
        case .topRated:
            return #imageLiteral(resourceName: "TopRated")
        }
    }

}
