//
//  IMeaningListViewOutput.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningListViewOutput: class {

    func searchDidTap(searchText: String)

    func cellDidTap(with meaning: MeaningModel)
}
