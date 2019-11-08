//
//  IMeaningListWireFrame.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit

protocol IMeaningListWireFrame: class {

    static func createModule() -> UIViewController

    func showMeaningDetail(from view: IMeaningListViewInput, meaning: MeaningModel)
}
