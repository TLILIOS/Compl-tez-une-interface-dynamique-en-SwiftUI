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
                .scaledToFit()
                .frame(height: 80)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
           VStack(alignment: .leading, spacing: 8) {
                Text(dish.name)
                    .font(.headline)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
                Text(dish.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
               HStack {
                   Text("\(dish.price) €")
                   Spacer()
 // Try To fixe
//                   SpicyHotLevelView()
                   SpiceLevelView(spiceLevel: dish.spiceLevel)
                   
                   
               }
            }
        }
        .padding()
                }
}

#Preview {
   
    DishCell(spiceLevel: .hot, dish: ViewModel.mainCourseArray[0])
}
