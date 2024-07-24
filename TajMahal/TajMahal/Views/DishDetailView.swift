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
            Image("Tikka Masala")
                .resizable()
                .scaledToFill()
                .cornerRadius(8)
                .padding(.bottom)
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
    }
        
}

#Preview {
    DishDetailView(dish: ViewModel.apetizerArray[2])
}
