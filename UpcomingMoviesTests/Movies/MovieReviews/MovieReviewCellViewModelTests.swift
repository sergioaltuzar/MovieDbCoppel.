//
//  MovieReviewCellViewModelTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
import UpcomingMoviesDomain
@testable import UpcomingMovies

class MovieReviewCellViewModelTests: XCTestCase {

    func testMovieReviewCellAuthorName() {
        // Arrange
        let authorNametoTest = "Sergio"
        let viewModel = createSUT(with: Review.with(authorName: authorNametoTest))
        // Act
        let viewModelAuthorName = viewModel.authorName
        // Assert
        XCTAssertEqual(viewModelAuthorName, authorNametoTest)
    }

    func testMovieReviewCellContent() {
        // Arrange
        let contentToTest = "Review content"
        let viewModel = createSUT(with: Review.with(content: contentToTest))
        // Act
        let viewModelContent = viewModel.content
        // Assert
        XCTAssertEqual(viewModelContent, contentToTest)
    }

    private func createSUT(with review: Review) -> MovieReviewCellViewModel {
        MovieReviewCellViewModel(review)
    }

}
