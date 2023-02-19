//
//  SearchOptionsInteractor.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class SearchOptionsInteractor: SearchOptionsInteractorProtocol {

    private var movieVisitUseCase: MovieVisitUseCaseProtocol
    private let genreUseCase: GenreUseCaseProtocol

    var didUpdateMovieVisit: (() -> Void)?

    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieVisitUseCase = useCaseProvider.movieVisitUseCase()
        self.genreUseCase = useCaseProvider.genreUseCase()

        self.movieVisitUseCase.didUpdateMovieVisit = { [weak self] in
            self?.didUpdateMovieVisit?()
        }
    }

    func getGenres(completion: @escaping (Result<[Genre], Error>) -> Void) {
        genreUseCase.fetchAll(completion: completion)
    }

    func getMovieVisits(completion: @escaping (Result<[MovieVisit], Error>) -> Void) {
        movieVisitUseCase.getMovieVisits(completion: completion)
    }

}
