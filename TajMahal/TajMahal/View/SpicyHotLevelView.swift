//
//  SpicyLevelView.swift
//  TajMahal
//
//  Created by HTLILI on 25/07/2024.
//

import SwiftUI

struct SpicyHotLevelView: View {
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 74, height: 22)
                .foregroundStyle(.white)
            HStack(spacing: 0) {
                Text("🌶️")
                
                Text("🌶️")
                
                Text("🌶️")
            }
        }
    }
}

#Preview {
    SpicyHotLevelView()
}
