//
//  ISkyEngApiService.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

typealias WordRequestCompletion = (Result<[Word], APIError>) -> Void

protocol ISkyEngApiService {
    func fetchWords(for text: String, completion: @escaping WordRequestCompletion)
}
