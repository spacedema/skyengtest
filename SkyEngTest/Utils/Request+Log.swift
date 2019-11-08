//
//  Request+Log.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import Alamofire

extension Request {
   public func debugLog() -> Self {
      #if DEBUG
         debugPrint(self)
      #endif
      return self
   }
}
