//
//  SpicyLightLevelView.swift
//  TajMahal
//
//  Created by HTLILI on 25/07/2024.
//

import SwiftUI

struct SpicyLightLevelView: View {
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 74, height: 22)
                .foregroundStyle(.white)
            HStack(spacing: 0) {
                Text("🌶️")
                Text("🌶️")
                    .opacity(0.4)
                Text("🌶️")
                    .opacity(0.4)
            }
        }
    }
}

#Preview {
    SpicyLightLevelView()
}
