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
            ZStack(alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 335, maxHeight: .infinity)
                    .cornerRadius(12)
                    .clipped()
                
                SpiceLevelView(spiceLevel: dish.spiceLevel)
                    .offset(x: -10, y: 10)
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
            
            .font(.PlusJakartaSansMedium(size: 12))
            .padding()
            .lineLimit(nil)
        }
        .padding()
        .navigationTitle("")// Hide Default Title to use custom one
        .toolbar {
            ToolbarItem(placement: .topBarLeading){
                Text(dish.name)
                    .font(.PlusJakartaSansMedium(size: 18))
                    .bold()
            }
        }
        
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) { Image(systemName: "chevron.left")
                        .foregroundStyle(.fontColorBold)
                }
            }
            
        }
        .navigationBarBackButtonHidden()
    }       
}

#Preview {
    DishDetailView(dish: ViewModel.mainCourseArray[0])
}
