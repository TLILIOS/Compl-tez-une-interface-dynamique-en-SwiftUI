//
//  DishDetailView.swift
//  TajMahal
//
//  Created by HTLILI on 24/07/2024.
//

import SwiftUI

struct DishDetailView: View {
     
    
    var dish: Dish
    var body: some View {
        
        VStack(alignment: .leading ) {
            Spacer()
            ZStack {
                Image(dish.imageName)
                    .resizable()
                    .frame(height: 467)
                    .cornerRadius(8)
// Try To fixe this
//                SpicyHotLevelView()
                SpiceLevelView(spiceLevel: dish.spiceLevel)
                    .offset(x: 130, y: -210)
                    
            }
            Spacer()
            Spacer()
            Text("Allergènes:")
                .padding(.bottom)
            Text(dish.description)
                .foregroundStyle(.secondary)
            Divider()
                .frame(height: 20)
            Text("Ingredients:")
                .padding(.bottom)
            Text(dish.ingredients)
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding()
        .navigationTitle(dish.name)
    }
        
        
}

#Preview {
    DishDetailView(dish: ViewModel.apetizerArray[2])
}
