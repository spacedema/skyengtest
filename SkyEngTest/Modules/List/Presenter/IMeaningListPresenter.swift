//
//  IMeaningListViewPresenter.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningListPresenter: class {

    var view: IMeaningListViewInput? { get set }

    var interactor: IMeaningListInteractorInput? { get set }

    var wireFrame: IMeaningListWireFrame? { get set }
}
