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
    
    var spiceLevel: SpiceLevel = .light
    var starters: [Dish] = ViewModel.apetizerArray
    var plats: [Dish] = ViewModel.mainCourseArray
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            List {
               
                    Section(header: Text("Entrées").textCase(nil)) {
                        ForEach(starters, id: \.self)
                        { starter in
                            
                            NavigationLink {
                                
                                DishDetailView(dish: starter)
                            }
                        label: {
                            DishCell(spiceLevel: starter.spiceLevel, dish: starter)
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                            
                        }
                    }
                    
                    Section(header: Text("Plats Principaux").textCase(nil)) {
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
            .navigationTitle("Menu")
            //        .font(.custom("PlusJakartaSans-Regular", size: 18))
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
}

#Preview {
    MenuView()
}
