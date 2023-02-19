//
//  ConfigurationHandler.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class ConfigurationHandler: ConfigurationHandlerProtocol {

    private var imageConfiguration: ImageConfigurationHandler?

    // MARK: - ConfigurationHandlerProtocol

    var regularImageBaseURLString: String {
        guard !isTesting() else {
            return ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString
        }
        return imageConfiguration?.regularImageBaseURLString ?? ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString
    }

    var backdropImageBaseURLString: String {
        guard !isTesting() else {
            return ImageConfigurationHandler.Constants.defaultBackdropImageBaseURLString
        }
        return imageConfiguration?.backdropImageBaseURLString ??  ImageConfigurationHandler.Constants.defaultBackdropImageBaseURLString
    }

    func setConfiguration(_ configuration: Configuration) {
        self.imageConfiguration = ImageConfigurationHandler(configuration: configuration)
    }

    // MARK: - XCTest

    // TODO: - Remove this when not necessary
    private func isTesting() -> Bool {
        NSClassFromString("XCTest") != nil
    }

}
