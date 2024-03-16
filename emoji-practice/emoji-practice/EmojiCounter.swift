//
//  EmojiCounter.swift
//  emoji-practice
//
//  Created by Emily Denham on 3/16/24.
//

import Foundation

import Foundation

class EmojiCounter: Identifiable, ObservableObject {
    let id = UUID()
    let emoji: String
    @Published var count: Int
    
    init(emoji: String, count: Int) {
        self.emoji = emoji
        self.count = count
    }
}
