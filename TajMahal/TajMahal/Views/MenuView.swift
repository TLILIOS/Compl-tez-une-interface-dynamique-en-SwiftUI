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
     var starters: [Dish] = ViewModel.apetizerArray
 
    
    var body: some View {
        NavigationView {
            List(starters, id: \.self) { starter in
                HStack {
                    Image(starter.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .cornerRadius(5)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(starter.name)
                            .font(.headline)
                            .lineLimit(1)
                            .minimumScaleFactor(0.8)
                        Text(starter.description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        HStack {
                            Text("5,50€")
                            Spacer()
                            Text("🌶️🌶️🌶️")
                        }
                    }
//                    .padding()
                }
                .padding()
            }
            .navigationTitle("Entrées")
            
        }
        
        
    }
    
}

#Preview {
    MenuView()
}
