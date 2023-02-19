//
//  VisitedMovieCollectionViewCell.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import UIKit

final class VisitedMovieCollectionViewCell: UICollectionViewCell, Animatable {

    @IBOutlet private weak var posterImageView: UIImageView!

    var viewModel: VisitedMovieCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }

    var settings: AnimatableSettingsProtocol {
        var settings = AnimatableSettings()
        settings.transform = .init(scaleX: 0.90, y: 0.90)
        settings.duration = 0.3
        settings.springDamping = 1.0
        settings.springVelocity = 0.5
        return settings
    }

    // MARK: - Lifecycle

    override var isHighlighted: Bool {
        didSet {
            highlight(isHighlighted)
        }
    }

    // MARK: - Reactive Behavior

    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        posterImageView.setImage(with: viewModel.posterURL)
    }

}
