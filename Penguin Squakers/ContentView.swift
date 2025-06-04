//
//  ContentView.swift
//  Penguin Squakers
//
//  Created by Sharlene Tan Qin Ying on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 50.0
    @State private var showingSheet: Bool = false
    
    @State private var showingPoop = false
    @State private var poopIsHappy = true
    
    @State private var secondsLeft = 5
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    ProgressBarView(value: $value)
                    HStack {
                        Spacer()
                        VStack {
                            NavigationLink {
                                HangryView(value: $value)
                            } label: {
                                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 70, height: 70)
                                    .background(.secondary)
                                    .mask(Circle())
                            }
                            .buttonStyle(.plain)
                            NavigationLink {
                                PoopView(showingPoop: $showingPoop, poopIsHappy: $poopIsHappy, value: $value, secondsLeft: $secondsLeft)
                            } label: {
                                Image(systemName: "toilet.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 70, height: 70)
                                    .background(.secondary)
                                    .mask(Circle())
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    Spacer()
                }
                VStack {
                    Text("Penguin")
                        .font(.largeTitle)
                        .bold()
                    Image(value >= 100 ? "happyPenguin" : "penguin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                }
            }
            .padding()
            .sheet(isPresented: $showingSheet) {
                SheetView()
            }
            .onReceive(timer) { input in
                if secondsLeft > 0 && showingPoop {
                    withAnimation {
                        secondsLeft -= 1
                    }
                }
                withAnimation {
                    value -= 1
                }
            }
            .onChange(of: secondsLeft) {
                if secondsLeft == 0 && showingPoop {
                    withAnimation {
                        if value >= 15 {
                            value -= 15
                        }
                        poopIsHappy = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
