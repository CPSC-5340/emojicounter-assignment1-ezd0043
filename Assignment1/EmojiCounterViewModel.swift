//
//  EmojiCounterViewModel.swift
//  Assignment1
//
//  Created by Emily Denham on 3/15/24.
//

import Foundation
import Combine



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
    
    func incrementCounter(for id: UUID) {
        if let index = counters.firstIndex(where: { $0.id == id }) {
            counters[index].count += 1
            self.counters = counters
            print("Incremented Counter for \(id). New Count: \(counters[index].count)") 
        }
    }

    func decrementCounter(for id: UUID) {
        if let index = counters.firstIndex(where: { $0.id == id }) {
            counters[index].count -= 1
            self.counters = counters 
            print("Decremented Counter for \(id). New Count: \(counters[index].count)")
        }
    }

}

