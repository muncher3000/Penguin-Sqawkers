//
//  HangryView.swift
//  Penguin Squakers
//
//  Created by Axelia Yeo on 4/6/25.
//

import SwiftUI

struct HangryView: View {
    @Binding var value: Double
    var body: some View {
        VStack{
            ProgressBarView(value: $value)
            Image(value >= 100 ? "happyPenguin" : "penguin")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Spacer()
            HStack{
                Spacer()
                Button {
                    if value < 100 {
                        withAnimation {
                            value += 5
                        }
                    }
                } label: {
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 80, height: 80)
                        .background(.secondary)
                        .mask(Circle())
                }
                .tint(.red)
                Spacer()
                Button {
                    if value < 100 {
                        withAnimation {
                            value += 5
                        }
                    }
                } label: {
                    Image(systemName: "carrot.fill")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 80, height: 80)
                        .background(.secondary)
                        .mask(Circle())
                }
                .tint(.orange)
                Spacer()
                
                Button {
                    if value < 100 {
                        withAnimation {
                            value += 5
                        }
                    }
                } label: {
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 80, height: 80)
                        .background(.secondary)
                        .mask(Circle())
                }
                Spacer()
            }
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var value = 50.0
    HangryView(value: $value)
}
