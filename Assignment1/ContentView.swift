//
//  ContentView.swift
//  Assignment 1 - Mobile Apps 2
//
//  Created by Emily Denham on 3/15/24.
//
import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    @ObservedObject var viewModel = EmojiCounterViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(viewModel.counters) { counter in
                        //Calls ActionItem with action handler (this works better than previous implementation)
                        ActionItem(counter: counter.count, data: counter.emoji) { action in
                            switch action {
                            case .increment:
                                //tells viewmodel to increment
                                viewModel.incrementCounter(for: counter.id)
                            case .decrement:
                                //tells viewmodel to decrement
                                viewModel.decrementCounter(for: counter.id)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

enum Action {
    case increment, decrement
}

struct ActionItem: View {  //ActionItem struct to accept action handler 
    var counter: Int
    var data: String
    var actionHandler: (Action) -> Void
    
    var body: some View {
        HStack {
            Text(data +  " Counter: ")
                .foregroundColor(.black)
            Text("\(counter)")
                .foregroundColor(.black)
            Spacer()
            //When tapped, calls action handler to increment counter
            Image(systemName: "plus.circle.fill")
                .imageScale(.large)
                .foregroundColor(.green)
                .onTapGesture {
                    actionHandler(.increment)
                }
            //when tapped, calls action handler to decreemnt counter
            Image(systemName: "minus.circle.fill")
                .imageScale(.large)
                .foregroundColor(.red)
                .onTapGesture {
                    actionHandler(.decrement)
                }
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
