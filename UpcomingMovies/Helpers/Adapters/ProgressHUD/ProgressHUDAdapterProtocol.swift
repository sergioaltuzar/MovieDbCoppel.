//
//  ProgressHUDAdapterProtocol.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

protocol ProgressHUDAdapterProtocol {

    func showHUDWithOnlyText(_ text: String)
    func showHUDWithOnlyText(_ text: String, in view: UIView)

}
