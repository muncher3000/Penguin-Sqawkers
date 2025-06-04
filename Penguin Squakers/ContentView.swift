//
//  ContentView.swift
//  Penguin Squakers
//
//  Created by Sharlene Tan Qin Ying on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Penguin")
                .font(.largeTitle)
                .bold()
            Image("penguin")
                .resizable()
                .frame(width: 200, height: 120)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
