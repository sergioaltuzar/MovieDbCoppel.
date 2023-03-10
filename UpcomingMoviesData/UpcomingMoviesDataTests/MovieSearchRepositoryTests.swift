//
//  MovieSearchRepositoryTests.swift
//  UpcomingMoviesData-Unit-UpcomingMoviesDataTests
//
//  Created by Sergio on 2/16/23.
//

import XCTest
@testable import UpcomingMoviesData
@testable import UpcomingMoviesDomain

class MovieSearchRepositoryTests: XCTestCase {

    private var repository: MovieSearchRepository!
    private var movieSearchLocalDataSource: MovieSearchLocalDataSourceProtocolMock!

    override func setUpWithError() throws {
        try super.setUpWithError()
        movieSearchLocalDataSource = MovieSearchLocalDataSourceProtocolMock()
        repository = MovieSearchRepository(localDataSource: movieSearchLocalDataSource)
    }

    override func tearDownWithError() throws {
        repository = nil
        movieSearchLocalDataSource = nil
        try super.tearDownWithError()
    }

    func testGetMovieSearches() {
        // Act
        repository.getMovieSearches(completion: { _ in })
        // Assert
        XCTAssertEqual(movieSearchLocalDataSource.getMovieSearchesCallCount, 1)
    }

    func testSaveSearchTextCalled() {
        // Act
        repository.save(with: "Text", completion: { _ in  })
        // Assert
        XCTAssertEqual(movieSearchLocalDataSource.saveCallCount, 1)
    }

}
