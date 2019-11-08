//
//  MeaningDetailPresenter.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

class MeaningDetailPresenter: IMeaningDetailPresenter {

    weak var view: IMeaningDetailViewInput?

    var wireFrame: IMeaningDetailWireFrame?

    var meaning: MeaningModel

    init(model: MeaningModel) {
        self.meaning = model
    }
}

extension MeaningDetailPresenter: IMeaningDetailViewOutput {

    func viewDidLoad() {
        view?.setData(model: meaning)
    }
}
