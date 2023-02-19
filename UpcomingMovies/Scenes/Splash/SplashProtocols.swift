//
//  SplashProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UpcomingMoviesDomain

protocol SplashViewModelProtocol {

    var initialDownloadsEnded: PublishBindable<Void> { get }

    func startInitialDownloads()

}

protocol SplashInteractorProtocol {

    /**
     * Fetch API configurations.
     */
    func getAppConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)

    /**
     * Fetch all the available movie genres
     */
    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void)

}
