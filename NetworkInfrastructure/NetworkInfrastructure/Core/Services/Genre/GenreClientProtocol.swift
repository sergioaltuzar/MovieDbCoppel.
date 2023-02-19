//
//  GenreClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol GenreClientProtocol {

    func getAllGenres(completion: @escaping (Result<GenreResult, APIError>) -> Void)

}
