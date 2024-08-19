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
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Section for Starters
                    Text("Entrées")
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                        .padding(.leading)
                    VStack(spacing: 8) {
                        
                        ForEach(starters, id: \.self) { starter in
                            
                            NavigationLink(destination: DishDetailView(dish: starter)) {
                                
                                DishCell(spiceLevel: starter.spiceLevel, dish: starter).font(.custom("PlusJakartaSans-Regular", size: 14))
                            }
                            
                        }
                    }
                    .padding([.leading, .trailing, .vertical])
                    // Section for Main Courses
                    Text("Plats Principaux")
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                        .padding(.leading)
                    VStack(spacing: 8) {
                        ForEach(plats, id: \.self) { plat in
                            NavigationLink {
                                DishDetailView(dish: plat)
                            } label: {
                                DishCell(spiceLevel: plat.spiceLevel, dish: plat)
                            }
                        }
                    }
                    .padding([.leading, .trailing])
                }
                }
            .background(Color.customGray)
            //The ToolbarItem Title MENU
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Menu")
                            .font(.custom("PlusJakartaSans-Regular", size: 18))
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

#Preview {
    MenuView()
}
