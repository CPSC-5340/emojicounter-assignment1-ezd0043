//
//  ContentView.swift
//  emoji-practice
//
//  Created by Emily Denham on 3/16/24.
//
import SwiftUI

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = EmojiCounterViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.counters.indices, id: \.self) { index in  // Iterating over indices
                    HStack {
                        Text(viewModel.counters[index].emoji)
                            .font(.largeTitle)
                        Spacer()
                        Text("Counter: \(viewModel.counters[index].count)")
                        Spacer()
                        Button(action: {
                            viewModel.incrementCounter(at: index)  // Expecting an Int parameter
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                        }
                        Button(action: {
                            viewModel.decrementCounter(at: index)  // Expecting an Int parameter
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Emoji Counter", displayMode: .inline)
        }
    }
}
