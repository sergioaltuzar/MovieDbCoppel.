//
//  HeaderView.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class HeaderView: UIView {

    private lazy var headerTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = FontHelper.subheadLight
        label.adjustsFontForContentSizeCategory = true
        return label
    }()

    var headerTitle: String? {
        didSet {
            headerTitleLabel.text = headerTitle
        }
    }

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }

    // MARK: - Private

    private func setupUI() {
        backgroundColor = ColorPalette.defaultGrayBackgroundColor
        setupLabel()
    }

    private func setupLabel() {
        addSubview(headerTitleLabel)
        headerTitleLabel.fillSuperview(padding: .init(top: Constants.verticalMargin,
                                                      left: Constants.horizontalMargin,
                                                      bottom: Constants.verticalMargin,
                                                      right: Constants.horizontalMargin))
    }

    // MARK: - Constants

    struct Constants {

        static let horizontalMargin: CGFloat = 16.0
        static let verticalMargin: CGFloat = 8.0

    }

}
