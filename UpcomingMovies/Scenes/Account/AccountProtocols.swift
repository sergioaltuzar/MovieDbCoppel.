//
//  AccountProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

protocol AccountViewModelProtocol {

    var showAuthPermission: AnyPublishBindable<URL> { get }
    var didSignIn: AnyPublishBindable<Void> { get }
    var didReceiveError: AnyPublishBindable<Void> { get }

    func startAuthorizationProcess()
    func signInUser()
    func signOutCurrentUser()

    func isUserSignedIn() -> Bool
    func currentUser() -> User?

}

protocol AccountInteractorProtocol {

    func getAuthPermissionURL(completion: @escaping (Result<URL, Error>) -> Void)
    func signInUser(completion: @escaping (Result<User, Error>) -> Void)
    func signOutUser()
    func currentUser() -> User?

}

protocol AccountCoordinatorProtocol: AnyObject {

    func embedSignInViewController(on parentViewController: SignInViewControllerDelegate) -> SignInViewController
    func embedProfileViewController(on parentViewController: ProfileViewControllerDelegate,
                                    for user: User?) -> ProfileViewController

    func removeChildViewController<T: UIViewController>(_ viewController: inout T?,
                                                        from parentViewController: UIViewController)

    func showAuthPermission(for authPermissionURL: URL,
                            and authPermissionDelegate: AuthPermissionViewControllerDelegate)

    func showProfileOption(_ profileOption: ProfileOptionProtocol)

}
