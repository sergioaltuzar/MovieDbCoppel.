//
//  MovieReviewsInteractorTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MovieReviewsInteractorTests: XCTestCase {

    private var interactor: MovieReviewsInteractor!
    private var mockMovieUseCase: UpcomingMoviesDomain.MovieUseCaseProtocolMock!

    override func setUpWithError() throws {
        try super.setUpWithError()
        mockMovieUseCase = MovieUseCaseProtocolMock()
        interactor = MovieReviewsInteractor(movieUseCase: mockMovieUseCase)
    }

    override func tearDownWithError() throws {
        interactor = nil
        mockMovieUseCase = nil
        try super.tearDownWithError()
    }

    func testGetMovieReviewssCalled() {
        // Arrange
        let reviewToTest = [Review.with()]
        mockMovieUseCase.getMovieReviewsResult = .success(reviewToTest)

        let expectation = XCTestExpectation(description: "Should get reviews")
        // Act
        interactor.getMovieReviews(for: 1, page: 1, completion: { reviews in
            guard let reviews = try? reviews.get() else {
                XCTFail("No valid reviews")
                return
            }
            XCTAssertEqual(reviews, reviewToTest)
            expectation.fulfill()
        })
        // Assert
        XCTAssertEqual(mockMovieUseCase.getMovieReviewsCallCount, 1)
        wait(for: [expectation], timeout: 1.0)
    }

}
