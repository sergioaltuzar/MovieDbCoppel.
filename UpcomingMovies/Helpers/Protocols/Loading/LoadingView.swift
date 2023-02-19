//
//  LoadingView.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

protocol LoadingView: Displayable {

    func startLoading()
    func stopLoading()

}
