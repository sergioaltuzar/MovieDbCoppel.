//
//  MovieVisitUseCase.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

public protocol MovieVisitUseCaseProtocol {

    var didUpdateMovieVisit: (() -> Void)? { get set }

    func getMovieVisits(completion: @escaping (Result<[MovieVisit], Error>) -> Void)

    func save(with id: Int, title: String, posterPath: String?,
              completion: @escaping (Result<Void, Error>) -> Void)

}
