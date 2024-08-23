//
//  DishCell.swift
//  TajMahal
//
//  Created by HTLILI on 24/07/2024.
//

import SwiftUI

struct DishCell: View {
    var dish: Dish
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 86)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 8) {
                Text(dish.name)
                    .font(.plusJakartaSansRegular(size: 14))
                    .foregroundStyle(.customFont)
                    .bold()
                Text(dish.description)
                    .font(.plusJakartaSansRegular(size: 12))
                    .foregroundStyle(.customFont)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                HStack {
                    Text("\(dish.price)€")
                        .font(.plusJakartaSansRegular(size: 12))
                        .bold()
                        .foregroundStyle(.customFont)
                    
                    
                    Spacer()
                    SpiceLevelView(spiceLevel: dish.spiceLevel)
                }
            }
            .padding(.leading, 8)
        }
        .frame(width: 330, height: 86)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
        )
        .padding(.vertical, 5)
    }
    
    
}

#Preview {
    
    DishCell(dish: ViewModel.mainCourseArray[0])
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
