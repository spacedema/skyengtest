//
//  MeaningListWireFrame.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit

class MeaningListWireFrame: IMeaningListWireFrame {

    class func createModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "MeaningsNavigationController")
        guard let view = navController.children.first as? MeaningsListViewController else {
            return UIViewController()
        }

        let presenter: IMeaningListPresenter & IMeaningListInteractorOutput & IMeaningListViewOutput = MeaningListPresenter()
        let interactor: IMeaningListInteractorInput = MeaningListInteractor(apiService: ApiService())
        let wireFrame: IMeaningListWireFrame = MeaningListWireFrame()

        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter

        return navController
    }

    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "MeaningListView", bundle: Bundle.main)
    }

    func showMeaningDetail(from view: IMeaningListViewInput, meaning: MeaningModel) {
        guard let sourceView = view as? UIViewController else { return }
        let meaningDetailViewController = MeaningDetailWireFrame.createModule(with: meaning)
        sourceView.navigationController?.pushViewController(meaningDetailViewController, animated: true)
    }
}
