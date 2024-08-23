//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    
    @State var starters: [Dish] = ViewModel.apetizerArray
    @State var plats: [Dish] = ViewModel.mainCourseArray
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    SectionHeaderView(title: "Entrées")
                    DishListView(dishes: starters)
                    
                    SectionHeaderView(title: "Plats Principaux")
                    DishListView(dishes: plats)
                    // Section for Starters
                }
            }
            
            .background(Color.menuBackground)
            //The ToolbarItem Title MENU
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .font(.PlusJakartaSansSemiBold(size: 18))
                    
                        .bold()
                }
            }
            
            //Button chevron.left to GoBack
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
    
}

struct SectionHeaderView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.PlusJakartaSansSemiBold(size: 12))
            .padding([.leading, .top])
    }
}

struct DishListView: View {
    var dishes: [Dish]
    var body: some View {
        
        VStack(spacing: 8) {
            
            ForEach(dishes, id: \.self) { dish in
                
                NavigationLink(destination: DishDetailView(dish: dish)) {
                    
                    DishCell(dish: dish)
                        .font(.plusJakartaSansRegular(size: 14))
                }
                
            }
        }
        .padding([.leading, .trailing])
    }
    
}

#Preview {
    MenuView()
}
