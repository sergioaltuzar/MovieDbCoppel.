//
//  GenreUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol GenreUseCaseProtocol {

    var didUpdateGenre: (() -> Void)? { get set }

    func find(with id: Int, completion: @escaping (Result<Genre?, Error>) -> Void)
    func fetchAll(completion: @escaping (Result<[Genre], Error>) -> Void)

}
