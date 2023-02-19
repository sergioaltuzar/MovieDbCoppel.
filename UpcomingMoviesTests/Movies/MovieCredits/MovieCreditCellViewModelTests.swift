//
//  MovieCreditCellViewModelTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MovieCreditCellViewModelTests: XCTestCase {

    func testNameForCreditModelCreatedWithCast() {
        // Arrange
        let nameToTest = "Sergio"
        let viewModel = createSUT(with: Cast.with(name: nameToTest))
        // Act
        let viewModelName = viewModel.name
        // Assert
        XCTAssertEqual(nameToTest, viewModelName)
    }

    func testRoleForCreditModelCreatedWithCast() {
        // Arrange
        let characterToTest = "Villain"
        let viewModel = createSUT(with: Cast.with(character: characterToTest))
        // Act
        let viewModelRole = viewModel.role
        // Assert
        XCTAssertEqual(characterToTest, viewModelRole)
    }

    func testProfileURLForCreditModelCreatedWithCast() {
        // Arrange
        let photoPathToTest = "/path"
        let viewModel = createSUT(with: Cast.with(photoPath: photoPathToTest))
        // Act
        let viewModelProfileURL = viewModel.profileURL
        // Assert
        XCTAssertEqual(URL(string: ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString + photoPathToTest), viewModelProfileURL)
    }

    func testNameForCreditModelCreatedWithCrew() {
        // Arrange
        let nameToTest = "Sergio"
        let viewModel = createSUT(with: Crew.with(name: nameToTest))
        // Act
        let viewModelName = viewModel.name
        // Assert
        XCTAssertEqual(nameToTest, viewModelName)
    }

    func testRoleForCreditModelCreatedWithCrew() {
        // Arrange
        let jobToTest = "Assistant"
        let viewModel = createSUT(with: Crew.with(job: jobToTest))
        // Act
        let viewModelRole = viewModel.role
        // Assert
        XCTAssertEqual(jobToTest, viewModelRole)
    }

    func testProfileURLForCreditModelCreatedWithCrew() {
        // Arrange
        let photoPathToTest = "/path"
        let viewModel = createSUT(with: Crew.with(photoPath: photoPathToTest))
        // Act
        let viewModelProfileURL = viewModel.profileURL
        // Assert
        XCTAssertEqual(URL(string: ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString + photoPathToTest), viewModelProfileURL)
    }

    private func createSUT(with cast: Cast) -> MovieCreditCellViewModel {
        MovieCreditCellViewModel(cast: cast)
    }

    private func createSUT(with crew: Crew) -> MovieCreditCellViewModel {
        MovieCreditCellViewModel(crew: crew)
    }

}
