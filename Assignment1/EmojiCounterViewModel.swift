//
//  EmojiCounterViewModel.swift
//  Assignment1
//
//  Created by Emily Denham on 3/15/24.
//

import Foundation



class EmojiCounterViewModel: ObservableObject {
    @Published var counters: [EmojiCounter]

    init() {
        
        self.counters = [
            EmojiCounter(emoji: "🥳", count: 3),
            EmojiCounter(emoji: "🤔", count: -2),
            EmojiCounter(emoji: "😂", count: 1),
            EmojiCounter(emoji: "😎", count: 0),
            EmojiCounter(emoji: "🤯", count: 4),
            EmojiCounter(emoji: "🦄", count: 3),
            EmojiCounter(emoji: "😡", count: 2)
        ]
    }
}
