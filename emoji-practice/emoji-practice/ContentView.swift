//
//  ContentView.swift
//  emoji-practice
//
//  Created by Emily Denham on 3/16/24.
//
import SwiftUI

// ContentView.swift
struct ContentView: View {
    @ObservedObject var viewModel = EmojiCounterViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.counters) { counter in
                    ActionItem(emojiCounter: counter)
                }
            }
            .navigationBarTitle("Emoji Counter", displayMode: .inline)
        }
    }
}

// ActionItem.swift
struct ActionItem: View {
    @ObservedObject var emojiCounter: EmojiCounterViewModel
    
    var body: some View {
        HStack {
            Text(emojiCounter.emoji)
                .font(.largeTitle)
            Spacer()
            Text("Counter: \(emojiCounter.count)")
            Spacer()
            Button(action: {
                emojiCounter.incrementCounter()
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.green)
            }
            Button(action: {
                emojiCounter.decrementCounter()
            }) {
                Image(systemName: "minus.circle.fill")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
