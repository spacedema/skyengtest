//
//  MeaningModel.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation

struct MeaningModel {

    var word: String

    var translation: String

    var transcription: String

    var smallImageUrl: String?

    var largeImageUrl: String?

    init(meaning: Meaning, word: String) {
        self.word = word
        self.translation = meaning.translation.text
        self.transcription = meaning.transcription
        self.smallImageUrl = meaning.previewUrl != nil ? "https:\(meaning.previewUrl!)" : nil
        self.largeImageUrl = meaning.imageUrl != nil ? "https:\(meaning.imageUrl!)" : nil
    }
}
