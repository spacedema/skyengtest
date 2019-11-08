//
//  ApiError.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

enum APIError: Error {
    case requestError
    case serializationError
    case unknownError
}
