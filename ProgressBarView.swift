//
//  ProgressBarView.swift
//  Penguin Squakers
//
//  Created by Axelia Yeo on 4/6/25.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value: Double
    var body: some View {
        VStack {
            ProgressView("", value: value, total: 100)
                .progressViewStyle(.linear)
            HStack(alignment: .top){
                Text("😔")
                    .font(.largeTitle)
                Spacer()
                Text("😁")
                    .font(.largeTitle)
            }
        }
    }
}

