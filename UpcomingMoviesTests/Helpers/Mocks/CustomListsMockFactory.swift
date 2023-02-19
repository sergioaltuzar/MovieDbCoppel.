//
//  CustomListsMockFactory.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockCustomListsInteractor: CustomListsInteractorProtocol {

    var getCustomListsResult: Result<[List], Error>!
    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void) {
        completion(getCustomListsResult!)
    }

}
