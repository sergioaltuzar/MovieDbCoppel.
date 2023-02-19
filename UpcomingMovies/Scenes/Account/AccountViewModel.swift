//
//  AccountViewModel.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class AccountViewModel: AccountViewModelProtocol {

    private let interactor: AccountInteractorProtocol

    let showAuthPermission = PublishBindable<URL>().eraseToAnyBindable()
    let didSignIn = PublishBindable<Void>().eraseToAnyBindable()
    let didReceiveError = PublishBindable<Void>().eraseToAnyBindable()

    // MARK: - Initializers

    init(interactor: AccountInteractorProtocol) {
        self.interactor = interactor
    }

    // MARK: - AccountViewModelProtocol

    func startAuthorizationProcess() {
        interactor.getAuthPermissionURL { result in
            switch result {
            case .success(let url):
                self.showAuthPermission.send(url)
            case .failure:
                self.didReceiveError.send()
            }
        }
    }

    func signInUser() {
        interactor.signInUser { result in
            switch result {
            case .success:
                self.didSignIn.send()
            case .failure:
                self.didReceiveError.send()
            }
        }
    }

    func signOutCurrentUser() {
        interactor.signOutUser()
    }

    func isUserSignedIn() -> Bool {
        currentUser() != nil
    }

    func currentUser() -> User? {
        interactor.currentUser()
    }

}
