//
//  MovieVideoCellViewModelTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MovieVideoCellViewModelTests: XCTestCase {

    func testNameForVideoModel() {
        // Arrange
        let nameToTest = "Video1"
        let viewModel = createSUT(with: Video.with(name: nameToTest))
        // Act
        let viewModelName = viewModel.name
        // Assert
        XCTAssertEqual(nameToTest, viewModelName)
    }

    func testThumbnailURLForVideoModel() {
        // Arrange
        let urlToTest = URL(string: "google.com")
        let viewModel = createSUT(with: Video.with(thumbnailURL: urlToTest))
        // Act
        let viewModelThumbnailURL = viewModel.thumbnailURL
        // Assert
        XCTAssertEqual(urlToTest, viewModelThumbnailURL)
    }

    private func createSUT(with video: Video) -> MovieVideoCellViewModel {
        MovieVideoCellViewModel(video)
    }

}
