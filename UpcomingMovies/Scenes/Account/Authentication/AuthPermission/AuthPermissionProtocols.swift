//
//  AuthPermissionProtocols.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import WebKit

protocol AuthPermissionViewModelProtocol {

    var authPermissionURLRequest: URLRequest? { get }

}

protocol AuthPermissionCoordinatorProtocol: Coordinator {

    func dismiss(completion: (() -> Void)?)
    func didDismiss()

}

protocol AuthPermissionWebViewNavigationDelegate: WKNavigationDelegate {

    var didFinishNavigation: () -> Void { get set }

}
