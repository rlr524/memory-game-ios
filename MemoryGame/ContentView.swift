//
//  ContentView.swift
//  MemoryGame
//
//  Created by Rob Ranf on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
