//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = EmojiCounterViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach($viewModel.counters) { $counter in
                    HStack {
                        Text(counter.emoji)
                            .font(.largeTitle)
                        Spacer()
                        Text("Counter: \(counter.count)")
                        Spacer()
                        Button(action: {
                            counter.count += 1
                            print("Count increased to \(counter.count)")
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                        }
                        Button(action: {
                            counter.count -= 1
                            print("Count decreased to \(counter.count)")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


