//
//  MeaningListInteractor.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

class MeaningListInteractor: IMeaningListInteractorInput {

    var presenter: IMeaningListInteractorOutput?

    let apiService: ISkyEngApiService

    init(apiService: ISkyEngApiService) {
        self.apiService = apiService
    }

    func fetchWords(for text: String) {
        apiService.fetchWords(for: text) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let words):
                self.presenter?.didRetrieveData(self.parseApiData(apiModels: words))
            case .failure(let error):
                self.presenter?.didRetrieveError(error)
            }
        }
    }

    func parseApiData(apiModels: [Word]) -> [MeaningModel] {
        var result: [MeaningModel] = []
        for word in apiModels {
            for meaning in word.meanings {
                result.append(MeaningModel(meaning: meaning, word: word.text))
            }
        }
        return result
    }
}
