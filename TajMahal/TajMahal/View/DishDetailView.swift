//
//  DishDetailView.swift
//  TajMahal
//
//  Created by HTLILI on 24/07/2024.
//

import SwiftUI

struct DishDetailView: View {
     
    @Environment(\.presentationMode) var presentationMode
    var dish: Dish
    var body: some View {
        
        VStack {
            ZStack {
                Image(dish.imageName)
                    .resizable()
                    .frame(width: 335, height: 467)
                    .cornerRadius(8)
                SpiceLevelView(spiceLevel: dish.spiceLevel)
                    .offset(x: 120, y: -210)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Allergènes:")
                    .padding(.bottom, 5)
                Text(dish.allergens)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 5)
                Divider()
                    .padding(.bottom, 5)
                Text("Ingredients:")
                    .padding(.bottom, 5)
                Text(dish.ingredients)
                    .foregroundStyle(.secondary)            }
            
            .font(.custom("PlusJakartaSans-Regular", size: 12))
            .padding()
            .lineLimit(nil)
        }
        .padding()
        .navigationTitle(dish.name)
        .font(.custom("PlusJakartaSans-Regular", size: 12))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
               ToolbarItem(placement: .topBarLeading) {
                   Button(action: {
                       presentationMode.wrappedValue.dismiss()
                   }) { Image(systemName: "chevron.left")
                           .foregroundStyle(.black)
                   }
               }
              
           }
        .navigationBarBackButtonHidden()
    }
    
        
        
}

#Preview {
    DishDetailView(dish: ViewModel.mainCourseArray[0])
}
