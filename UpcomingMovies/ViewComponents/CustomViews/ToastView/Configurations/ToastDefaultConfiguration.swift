//
//  ToastDefaultConfiguration.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


enum ToastDefaultConfiguration {

    case success
    case failure

    var configuration: ToastConfigurationProtocol {
        switch self {
        case .success:
            return ToastSuccessConfiguration()
        case .failure:
            return ToastFailureConfiguration()
        }
    }

}
