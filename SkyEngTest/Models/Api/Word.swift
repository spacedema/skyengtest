//
//  Word.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

struct Word: Codable {

    let id: Int

    let text: String

    let meanings: [Meaning]
}
