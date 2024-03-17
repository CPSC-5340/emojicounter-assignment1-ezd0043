//
//  EmojiCounter.swift
//  Assignment 1 - Mobile Apps 2
//
//  Created by Emily Denham on 3/15/24.
import Foundation

struct EmojiCounter: Identifiable {
    let id: UUID
    var emoji: String
    var count: Int
    
    init(emoji: String, count: Int) {
        self.id = UUID()
        self.emoji = emoji
        self.count = count
    }
}





