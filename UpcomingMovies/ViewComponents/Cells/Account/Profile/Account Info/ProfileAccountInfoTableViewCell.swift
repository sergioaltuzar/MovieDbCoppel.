//
//  ProfileAccountInfoTableViewCell.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class ProfileAccountInfoTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var usernameLabel: UILabel!

    var viewModel: ProfileAccountInforCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }

    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: - Private

    private func setupUI() {
        selectionStyle = .none
        setupLabels()
    }

    private func setupLabels() {
        usernameLabel.font = FontHelper.body
        usernameLabel.textColor = ColorPalette.Label.defaultColor
        usernameLabel.textAlignment = .center
        usernameLabel.adjustsFontForContentSizeCategory = true

        nameLabel.font = FontHelper.footnote
        nameLabel.textColor = ColorPalette.regularGray
        nameLabel.textAlignment = .center
        nameLabel.adjustsFontForContentSizeCategory = true
    }

    // MARK: - Reactive Behavior

    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        usernameLabel.text = viewModel.username
        nameLabel.text = viewModel.name
    }

}
