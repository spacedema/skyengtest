//
//  MeaningDetailWireFrame.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit

class MeaningDetailWireFrame: IMeaningDetailWireFrame {

    class func createModule(with model: MeaningModel) -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MeaningDetailsController")
        guard let view = viewController as? MeaningDetailViewController else { return UIViewController() }

        let presenter: IMeaningDetailPresenter & IMeaningDetailViewOutput = MeaningDetailPresenter(model: model)
        let wireFrame: IMeaningDetailWireFrame = MeaningDetailWireFrame()

        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        return view
    }

    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "MeaningDetailView", bundle: Bundle.main)
    }
}
