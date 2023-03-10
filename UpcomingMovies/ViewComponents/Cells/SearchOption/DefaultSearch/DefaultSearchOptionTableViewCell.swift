//
//  DefaultSearchOptionTableViewCell.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

final class DefaultSearchOptionTableViewCell: UITableViewCell {

    var viewModel: DefaultSearchOptionCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    // MARK: - Private

    private func setupUI() {
        textLabel?.font = FontHelper.callout
        textLabel?.textColor = ColorPalette.lightBlueColor
        textLabel?.adjustsFontForContentSizeCategory = true

        detailTextLabel?.font = FontHelper.footnoteLight
        detailTextLabel?.textColor = ColorPalette.lightBlueColor
        detailTextLabel?.adjustsFontForContentSizeCategory = true
    }

    // MARK: - Reactive Behavior

    private func setupBindables() {
        textLabel?.text = viewModel?.title
        detailTextLabel?.text = viewModel?.subtitle
    }

}
