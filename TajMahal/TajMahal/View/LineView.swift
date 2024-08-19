//
//  LineView.swift
//  TajMahal
//
//  Created by HTLILI on 21/07/2024.
//

import SwiftUI

struct LineView: View {
    let image: String
    let leftText: String
    let rightText: String
    var body: some View {
        HStack {
            Image(image)
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .font(.custom("PlusJakartaSans-Regular", size: 12))
        .foregroundStyle(.gray)
        .padding()
    }
}

#Preview {
    LineView(image: "Vector", leftText: "12 Avenue de la Brique - 75010 Paris", rightText:"Right")
}
