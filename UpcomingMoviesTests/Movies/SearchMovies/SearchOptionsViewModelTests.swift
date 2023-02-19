//
//  SearchOptionsViewModelTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class SearchOptionsViewModelTests: XCTestCase {

    private var viewModel: SearchOptionsViewModel!
    private var interactor = SearchOptionsInteractorMock()

    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = SearchOptionsViewModel(interactor: interactor)
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testLoadGenres() {
        // Arrange
        let genresToTest: [UpcomingMoviesDomain.Genre] = [Genre.init(id: 1, name: "Genre 1")]
        let expectation = XCTestExpectation(description: "Content reload should be called")
        // Act
        viewModel.needsContentReload.bind({ _ in
            expectation.fulfill()
        }, on: nil)
        interactor.getGenresResult = .success(genresToTest)
        viewModel.loadGenres()
        // Assert
        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(interactor.getGenresCallCount, 1)
    }

    func testLoadVisitedMoviesFirstLoad() {
        // Arrange
        let movieVisitsToTest: [UpcomingMoviesDomain.MovieVisit] = [MovieVisit.with()]
        let expectation = XCTestExpectation(description: "Content reload should be called")
        // Act
        viewModel.needsContentReload.bind({ _ in
            expectation.fulfill()
        }, on: nil)
        interactor.getMovieVisitsResult = .success(movieVisitsToTest)
        viewModel.loadVisitedMovies()
        // Assert
        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(interactor.getMovieVisitsCallCount, 1)
    }

    func testLoadVisitedMoviesUpdate() {
        // Arrange
        let movieVisitsToTest: [UpcomingMoviesDomain.MovieVisit] = [MovieVisit.with()]
        let expectation = XCTestExpectation(description: "Movie visit update should be called")
        // Act
        viewModel.updateVisitedMovies.bind({ _ in
            expectation.fulfill()
        }, on: nil)

        interactor.getMovieVisitsResult = .success(movieVisitsToTest)
        viewModel.loadVisitedMovies()

        interactor.didUpdateMovieVisit?()
        // Assert
        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(interactor.getMovieVisitsCallCount, 2)
    }

}
