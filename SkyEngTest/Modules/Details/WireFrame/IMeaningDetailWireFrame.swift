//
//  IMeaningDetailWireFrame.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit

protocol IMeaningDetailWireFrame: class {

    static func createModule(with model: MeaningModel) -> UIViewController
}
