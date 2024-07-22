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
        .font(.caption)
        .opacity(0.6)
        .padding()
    }
}

#Preview {
    LineView(imageName: "clock", leftText: "12 Avenue de la Brique - 75010 Paris", rightText:"Right")
}
