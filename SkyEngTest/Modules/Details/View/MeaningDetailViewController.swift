//
//  MeaningDetailView.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit

class MeaningDetailViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var previewImageView: UIImageView!

    @IBOutlet weak var wordLabel: UILabel!

    @IBOutlet weak var translationLabel: UILabel!

    @IBOutlet weak var transcriptionLabel: UILabel!

    // MARK: - Dependencies

    var presenter: IMeaningDetailViewOutput?

    // MARK: - Logic

    deinit {
        previewImageView.af_cancelImageRequest()
        previewImageView.image = nil
    }
}

extension MeaningDetailViewController: IMeaningDetailViewOutput {

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension MeaningDetailViewController: IMeaningDetailViewInput {

    func setData(model: MeaningModel) {
        wordLabel.text = model.word
        translationLabel.text = model.translation
        transcriptionLabel.text = model.transcription
        if let previewUrl = model.largeImageUrl, let imageUrl = URL(string: previewUrl) {
            previewImageView.af_setImage(withURL: imageUrl)
        }
    }

}
