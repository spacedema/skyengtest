//
//  MeaningListViewPresenter.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

class MeaningListPresenter: IMeaningListPresenter {

    weak var view: IMeaningListViewInput?

    var interactor: IMeaningListInteractorInput?

    var wireFrame: IMeaningListWireFrame?
}

extension MeaningListPresenter: IMeaningListInteractorOutput {

    func didRetrieveError(_ error: APIError) {
        view?.hideLoading()
        view?.showError(text: error.localizedDescription)
    }

    func didRetrieveData(_ meanings: [MeaningModel]) {
        view?.hideLoading()
        view?.setData(meanings: meanings)
    }
}

extension MeaningListPresenter: IMeaningListViewOutput {

    func searchDidTap(searchText: String) {
        switch searchText.count {
        case 0:
            view?.setData(meanings: [])
        default:
            view?.showLoading()
            interactor?.fetchWords(for: searchText)
        }
    }

    func cellDidTap(with meaning: MeaningModel) {
        guard let view = view else { return }
        wireFrame?.showMeaningDetail(from: view, meaning: meaning)
    }
}
