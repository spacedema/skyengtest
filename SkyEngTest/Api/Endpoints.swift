//
//  Endpoints.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

struct API {
    static let baseUrl = "https://dictionary.skyeng.ru"
}

protocol Endpoint {
    var path: String { get }
    var url: String { get }
}

enum Endpoints {

    enum Meanings: Endpoint {
        case fetch

        public var path: String {
            switch self {
            case .fetch: return "/api/public/v1/words/search"
            }
        }

        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
