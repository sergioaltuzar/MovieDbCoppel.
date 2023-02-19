//
//  EmptyPlaceholderView.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//


import UIKit

final class EmptyPlaceholderView: UIView, NibLoadable, Placeholderable {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var messageLabel: UILabel!

    var isPresented: Bool = false

    var detailText: String? {
        didSet {
            guard let detailText = detailText else { return }
            messageLabel.text = detailText
        }
    }

    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: - Private

    private func setupUI() {
        imageView.image = #imageLiteral(resourceName: "EmptyPlaceholder")
        messageLabel.font = FontHelper.bodySemiBold
        messageLabel.textColor = ColorPalette.lightBlueColor
        messageLabel.adjustsFontForContentSizeCategory = true
    }

}
