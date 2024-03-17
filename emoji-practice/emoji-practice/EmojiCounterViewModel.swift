//
//  EmojiCounterViewModel.swift
//  emoji-practice
//
//  Created by Emily Denham on 3/16/24.
//
import SwiftUI

class EmojiCounterViewModel: ObservableObject {
    @Published var counters: [EmojiCounterViewModel]
    
    init() {
        self.counters = [
            EmojiCounterViewModel(emoji: "🥳", count: 3),
            EmojiCounterViewModel(emoji: "🤔", count: -2),
            EmojiCounterViewModel(emoji: "😂", count: 1),
            EmojiCounterViewModel(emoji: "😎", count: 0),
            EmojiCounterViewModel(emoji: "🤯", count: 4),
            EmojiCounterViewModel(emoji: "🦄", count: 3),
            EmojiCounterViewModel(emoji: "😡", count: 2)
        ]
    }
    
    func incrementCounter(for index: Int) {
        if index < counters.count {
            counters[index].count += 1
            print("Incremented Counter for \(counters[index].emoji). New Count: \(counters[index].count)")
        }
    }

    func decrementCounter(for index: Int) {
        if index < counters.count {
            counters[index].count -= 1
            print("Decremented Counter for \(counters[index].emoji). New Count: \(counters[index].count)")
        }
    }
}


