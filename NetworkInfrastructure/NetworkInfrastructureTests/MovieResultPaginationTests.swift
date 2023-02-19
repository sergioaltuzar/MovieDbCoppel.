//
//  MovieResultPaginationTests.swift
//  NetworkInfrastructureTests
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import NetworkInfrastructure

class MovieResultPaginationTests: XCTestCase {

    var movieResultUnderTest: MovieResult!

    override func setUp() {
        super.setUp()
        movieResultUnderTest = MovieResult(results: [],
                                           currentPage: 1,
                                           totalPages: 2)
    }

    override func tearDown() {
        movieResultUnderTest = nil
        super.tearDown()
    }

    func testMovieResultHasMorePagesTrue() {
        //Act
        let hasMorePages = movieResultUnderTest.hasMorePages
        //Assert
        XCTAssertTrue(hasMorePages)
    }

    func testMovieResultHasMorePagesFalse() {
        //Arrange
        movieResultUnderTest.totalPages = 1
        //Act
        let hasMorePages = movieResultUnderTest.hasMorePages
        //Assert
        XCTAssertFalse(hasMorePages)
    }

    func testMovieResultNextPage() {
        //Act
        let nextPage = movieResultUnderTest.nextPage
        //Assert
        XCTAssertEqual(nextPage, 2)
    }

}
