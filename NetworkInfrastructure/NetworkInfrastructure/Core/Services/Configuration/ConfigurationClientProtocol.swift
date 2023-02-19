//
//  ConfigurationClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

protocol ConfigurationClientProtocol {

    func getImagesConfiguration(completion: @escaping (Result<ImagesConfigurationResult, APIError>) -> Void)

}
