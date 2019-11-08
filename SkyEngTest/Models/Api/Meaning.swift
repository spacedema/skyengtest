//
//  Meaning.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

struct Meaning: Codable {

    let id: Int

    let translation: Translation

    let previewUrl: String?

    let imageUrl: String?

    let transcription: String
}
