//
//  MeaningListViewCell.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

class MeaningListViewCell: UITableViewCell {

    // MARK: - Outlets

    @IBOutlet weak var previewImageView: UIImageView!

    @IBOutlet weak var translationLabel: UILabel!

    @IBOutlet weak var wordLabel: UILabel!

    // MARK: - Logic

    func set(model: MeaningModel) {
        translationLabel.text = model.translation
        wordLabel.text = model.word

        if let previewUrl = model.smallImageUrl, let imageUrl = URL(string: previewUrl) {
            previewImageView.af_setImage(withURL: imageUrl)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        previewImageView.af_cancelImageRequest()
        previewImageView.image = nil
    }

}
