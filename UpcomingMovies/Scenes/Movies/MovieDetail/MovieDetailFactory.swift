//
//  MovieDetailFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

final class MovieDetailFactory: MovieDetailFactoryProtocol {

    var options: [MovieDetailOption] {
        [.reviews,
         .trailers,
         .credits,
         .similarMovies]
    }

}
