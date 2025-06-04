//
//  SheetView.swift
//  Penguin Squakers
//
//  Created by Axelia Yeo on 4/6/25.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: -15) {
                Text("Penguin")
                    .bold()
                    .font(.system(size: 80))
                    .foregroundStyle(Color(red: 107/255, green: 168/255, blue: 217/255))
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
                Text("Squawkers")
                    .bold()
                    .font(.system(size: 75))
                    .foregroundStyle(Color(red: 217/255, green: 107/255, blue: 107/255))
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
            }
            
            Image("penguin")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
        }
        .padding()
    }
}

#Preview {
    SheetView()
}
