//
//  EmojiCounterViewModel.swift
//  emoji-practice
//
//  Created by Emily Denham on 3/16/24.
//

import Combine
import SwiftUI

class EmojiCounterViewModel: ObservableObject {
    @Published var counters = [
            EmojiCounter(emoji: "🥳", count: 3),
            EmojiCounter(emoji: "🤔", count: -2),
            EmojiCounter(emoji: "😂", count: 1),
            EmojiCounter(emoji: "😎", count: 0),
            EmojiCounter(emoji: "🤯", count: 4),
            EmojiCounter(emoji: "🦄", count: 3),
            EmojiCounter(emoji: "😡", count: 2)
        ]
        
    func incrementCounter(at index: Int) {
        counters[index].count += 1
    }
        
    func decrementCounter(at index: Int) {
        counters[index].count -= 1
    }
    }

