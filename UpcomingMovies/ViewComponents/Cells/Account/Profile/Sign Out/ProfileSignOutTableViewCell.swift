//
//  ProfileSignOutTableViewCell.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

class ProfileSignOutTableViewCell: UITableViewCell {

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    // MARK: - Private

    private func setupUI() {
        textLabel?.text = LocalizedStrings.signOut()
        textLabel?.textAlignment = .center
        textLabel?.textColor = ColorPalette.redColor
        textLabel?.font = FontHelper.calloutLight
        textLabel?.adjustsFontForContentSizeCategory = true
    }

}
