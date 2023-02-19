//
//  UIImageView+Kingfisher.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {

    func setImage(with url: URL?) {
        kf.indicatorType = .activity
        kf.setImage(with: url)
    }

    func cancelImageDownload() {
        kf.cancelDownloadTask()
    }

}
