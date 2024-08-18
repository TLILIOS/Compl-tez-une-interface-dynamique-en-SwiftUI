//
//  DishCell.swift
//  TajMahal
//
//  Created by HTLILI on 24/07/2024.
//

import SwiftUI

struct DishCell: View {
    var spiceLevel: SpiceLevel
    var dish: Dish
    var body: some View {
        
        HStack {
            Image(dish.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 112, height: 86)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 8) {
                Text(dish.name)
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                
                Text(dish.description)
                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                    .foregroundStyle(.secondary)
                HStack {
                    Text("\(dish.price) €")
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                    Spacer()
                    SpiceLevelView(spiceLevel: dish.spiceLevel)
                }
            }
            
        }
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
        )
        .padding(.vertical, 5)
        
    }
   
    
}
    #Preview {
        
        DishCell(spiceLevel: .hot, dish: ViewModel.mainCourseArray[0])
    }

