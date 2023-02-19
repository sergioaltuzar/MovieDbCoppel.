//
//  ConfigurationHandlerProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UpcomingMoviesDomain

protocol ConfigurationHandlerProtocol {

    var regularImageBaseURLString: String { get }
    var backdropImageBaseURLString: String { get }

    func setConfiguration(_ configuration: Configuration)

}
