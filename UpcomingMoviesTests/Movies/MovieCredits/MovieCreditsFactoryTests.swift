//
//  MovieCreditsFactoryTests.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import XCTest
@testable import UpcomingMovies

class MovieCreditsFactoryTests: XCTestCase {

    private var factory: MovieCreditsFactory!

    override func setUpWithError() throws {
        try super.setUpWithError()
        factory = MovieCreditsFactory()
    }

    override func tearDownWithError() throws {
        factory = nil
        try super.tearDownWithError()
    }

    func testCastSection() {
        // Act
        let sections = factory.sections
        let castSection = sections[0]
        // Assert
        XCTAssertEqual(castSection.type, .cast)
        XCTAssertTrue(castSection.opened)
    }

    func testCrewSection() {
        // Act
        let sections = factory.sections
        let crewSection = sections[1]
        // Assert
        XCTAssertEqual(crewSection.type, .crew)
        XCTAssertFalse(crewSection.opened)
    }

}
