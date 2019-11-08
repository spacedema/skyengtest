//
//  ApiService.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import Alamofire

class ApiService: ISkyEngApiService {

    func fetchWords(for text: String, completion: @escaping WordRequestCompletion) {

        let params: [String: String] = [
            "search": text
        ]

        Alamofire
            .request(Endpoints.Meanings.fetch.url, method: .get, parameters: params)
            .debugLog()
            .responseJSON { response in
                print("JSON:\(String(describing: response.result.value))")
                guard let data = response.data else {
                    completion(.failure(.requestError))
                    return
                }
                do {
                    let words = try JSONDecoder().decode([Word].self, from: data)
                    completion(.success(words))
                } catch let error {
                    print(error)
                    completion(.failure(.serializationError))
                }
            }
    }
}
