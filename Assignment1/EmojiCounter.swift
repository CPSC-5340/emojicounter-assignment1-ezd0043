//
//  EmojiCounter.swift
//  Assignment1
//
//  Created by Emily Denham on 3/15/24.
//

import Combine
import Foundation

class EmojiCounter: Identifiable, ObservableObject {
    let id: UUID
    var emoji: String
    @Published var count: Int

    init(emoji: String, count: Int) {
        self.id = UUID()
        self.emoji = emoji
        self.count = count
    }
}
