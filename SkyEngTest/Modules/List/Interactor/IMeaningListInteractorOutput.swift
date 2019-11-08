//
//  IMeaningListInteractoroutput.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

protocol IMeaningListInteractorOutput: class {

    func didRetrieveData(_ meanings: [MeaningModel])

    func didRetrieveError(_ error: APIError)
}
