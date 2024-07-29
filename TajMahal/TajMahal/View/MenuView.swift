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
    
    //    let viewModel: ViewModel = ViewModel()
    var spiceLevel: SpiceLevel = .light
    var starters: [Dish] = ViewModel.apetizerArray
    var plats: [Dish] = ViewModel.mainCourseArray
    
    var body: some View {
        NavigationView {
            List {
                Section("Entrées") {
                    
                    ForEach(starters, id: \.self) { starter in
                        NavigationLink {
                            DishDetailView(dish: starter)
                        } label: {
                            DishCell(spiceLevel: starter.spiceLevel, dish: starter)
                        }
                    }
                    .navigationTitle("Menu")

                    
                }
                Section("Plats Principaux") {
                    ForEach(plats, id: \.self) {
                        plat in
                        NavigationLink {
                            DishDetailView(dish: plat)
                        } label: {
                            DishCell(spiceLevel: plat.spiceLevel, dish: plat)
                               
                        }
                    }
                    
                }
            }
        }
    }
}



#Preview {
    MenuView()
}
