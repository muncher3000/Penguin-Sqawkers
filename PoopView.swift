//
//  PoopView.swift
//  Penguin Squakers
//
//  Created by Axelia Yeo on 4/6/25.
//

import SwiftUI

struct PoopView: View {
    @Binding var showingPoop: Bool
    @Binding var poopIsHappy: Bool
    @Binding var value: Double
    @Binding var secondsLeft: Int
    var body: some View {
        VStack {
            ProgressBarView(value: $value)
            Spacer()
            Button {
                withAnimation {
                    secondsLeft = 5
                    poopIsHappy = true
                    showingPoop = true
                }
            } label: {
                Image(value >= 100 ? "happyPenguin" : "penguin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            if showingPoop {
                Button{
                    withAnimation{
                        showingPoop = false
                        if poopIsHappy && value < 100 {
                            value += 5
                        }
                    }
                } label: {
                    Image(poopIsHappy ? "happyPoop" : "sadPoop")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                }
                
                Text("\(secondsLeft)s")
                    .font(.title)
                    .fontWeight(.bold)
                    .contentTransition(.numericText())
                
            }
            Spacer()
        }
        .padding()
    }
}
