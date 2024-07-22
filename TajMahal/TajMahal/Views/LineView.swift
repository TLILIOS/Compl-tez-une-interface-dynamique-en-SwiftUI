//
//  LineView.swift
//  TajMahal
//
//  Created by HTLILI on 21/07/2024.
//

import SwiftUI

struct LineView: View {
    let imageName: String
    let leftText: String
    let rightText: String
    var body: some View {
        HStack {
            Image(systemName:imageName)
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .padding()
    }
}

#Preview {
    LineView(imageName: "clock.fill", leftText: "Mardi", rightText:"Right")
}
