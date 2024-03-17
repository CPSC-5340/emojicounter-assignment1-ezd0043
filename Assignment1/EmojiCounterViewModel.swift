//
//  EmojiCounterViewModel.swift
//  Assignment 1 - Mobile Apps 2
//
//  Created by Emily Denham on 3/15/24.
//
import SwiftUI
import Combine
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
    //Increment counter
    func incrementCounter(for id: UUID) {
            if let index = counters.firstIndex(where: { $0.id == id }) {
                counters[index].count += 1
            }
        }
        //Decrement counter
        func decrementCounter(for id: UUID) {
            if let index = counters.firstIndex(where: { $0.id == id }) {
                counters[index].count -= 1
            }
        }
}
