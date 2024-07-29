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
                    HStack(spacing: 0) {
                        Text("🌶️")
                        Text("🌶️")
                            .opacity(0.4)
                        Text("🌶️")
                            .opacity(0.4)
                    }
                }
            case .medium:
                ZStack {
                    Capsule()
                        .frame(width: 74, height: 22)
                        .foregroundStyle(.white)
                    HStack(spacing: 0) {
                        Text("🌶️")
                        
                        Text("🌶️")
                        
                        Text("🌶️")
                            .opacity(0.4)
                    }
                    
                }
            case .hot:
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
      
    }
}

#Preview {
    SpiceLevelView(spiceLevel: .hot)
}
