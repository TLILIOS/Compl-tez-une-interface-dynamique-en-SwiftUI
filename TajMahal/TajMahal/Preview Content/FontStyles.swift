//
//  FontStyles.swift
//  TajMahal
//
//  Created by HTLILI on 25/08/2024.
//

import SwiftUI

struct FontStyles: View {
    var body: some View {
        Text("Hello, World!")
            .font(.PlusJakartaSansBold(size: 18))
        
    }
}

#Preview {
    FontStyles()
}

extension Font {
    static func plusJakartaSansRegular(size: CGFloat) -> Font {
        .custom("PlusJakartaSans-Regular", size: size)
    }
    static func PlusJakartaSansBold(size: CGFloat) -> Font {
        .custom("PlusJakartaSans-Bold", size: size)
    }
    static func PlusJakartaSansSemiBold(size: CGFloat) -> Font {
        .custom("PlusJakartaSans-SemiBold", size: size)
    }
    static func PlusJakartaSansMedium(size: CGFloat) -> Font {
        .custom("PlusJakartaSans-Medium", size: size)
    }
}
