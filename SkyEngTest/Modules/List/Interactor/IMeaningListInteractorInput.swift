//
//  IMeaningListInteractorInput.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningListInteractorInput: class {

    var presenter: IMeaningListInteractorOutput? { get set }

    func fetchWords(for text: String)
}
