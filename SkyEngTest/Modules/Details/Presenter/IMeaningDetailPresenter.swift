//
//  IMeaningDetailPresenter.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningDetailPresenter: class {

    var view: IMeaningDetailViewInput? { get set }

    var wireFrame: IMeaningDetailWireFrame? { get set }

    var meaning: MeaningModel { get set }
}
