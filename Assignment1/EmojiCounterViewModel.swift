//
//  EmojiCounterViewModel.swift
//  Assignment1
//
//  Created by Emily Denham on 3/15/24.
//

import Foundation

struct EmojiCounter: Identifiable {
    var id = UUID()
    var emoji: String
    var count: Int
}

class EmojiCounterViewModel: ObservableObject {
    @Published var counters = [
        EmojiCounter(emoji: "🥳", count: 3),
        EmojiCounter(emoji: "🤔", count: -2),
        EmojiCounter(emoji: "😂", count: 1),
        EmojiCounter(emoji: "😎", count: 0),
        EmojiCounter(emoji: "🤯", count: 4),
        EmojiCounter(emoji: "🦄 ", count: 3),
        EmojiCounter(emoji: "😡", count: 2)
    ]
    
    func incrementCounter(counter: EmojiCounter) {
        if let index = counters.firstIndex(where: { $0.id == counter.id }) {
            counters[index].count += 1
        }
    }
    
    func decrementCounter(counter: EmojiCounter) {
        if let index = counters.firstIndex(where: { $0.id == counter.id }) {
            counters[index].count -= 1
        }
    }
}
