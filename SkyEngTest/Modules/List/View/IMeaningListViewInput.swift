//
//  IMeaningListView.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningListViewInput: class {

    var presenter: IMeaningListViewOutput? { get set }

    func setData(meanings: [MeaningModel])

    func showError(text: String)

    func showLoading()

    func hideLoading()
}
