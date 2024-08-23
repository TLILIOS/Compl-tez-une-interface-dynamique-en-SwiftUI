//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by HTLILI on 30/07/2024.
//

import SwiftUI

struct SpiceLevelView: View {
    var spiceLevel: SpiceLevel
    var body: some View {
        HStack {
            switch spiceLevel {
            case .light:
                ZStack {
                    Capsule()
                        .frame(width: 74, height: 22)
                        .foregroundStyle(.white)
                    SpicyLightLevelView()
                }
            case .medium:
                ZStack {
                    Capsule()
                        .frame(width: 74, height: 22)
                        .foregroundStyle(.white)
                    SpicyMediumLevelView()
                }
            case .hot:
                ZStack {
                    Capsule()
                        .frame(width: 74, height: 22)
                        .foregroundStyle(.white)
                    SpicyHotLevelView()
                }
            }
            
        }
        
    }
}

#Preview {
    SpiceLevelView(spiceLevel: .light)
}
