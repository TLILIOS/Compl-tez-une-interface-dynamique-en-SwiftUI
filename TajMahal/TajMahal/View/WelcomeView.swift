//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("TajMahal")
                    .resizable()
                    .frame(width: 335, height: 423)
                    .scaledToFill()
                    .padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurent Indien")
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.secondary)
                        Text("Taj Mahal")
                            .font(.custom("PlusJakartaSans-Regular", size: 18))
                            .bold()
                    }
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .colorInvert()
                        .opacity(0.5)
                  }
                .padding(.horizontal)
                VStack(spacing: -20) {
                    LineView(image: "Vector", leftText: "Mardi", rightText: "11h30 - 14h30・18h30 - 22h00")
                    LineView(image: "Pan", leftText: "Type de service", rightText: "A emporter")
                    LineView(image: "Localisation", leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
                    LineView(image: "Globe", leftText: "www.tajmahal.fr", rightText: "")
                    LineView(image: "Téléphone", leftText: "0612345678", rightText: "")
                }
                

                NavigationLink {
                    MenuView()
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 335, height: 40)
                            .foregroundStyle(.customRed)
                            .frame(height: 40)
                        Text("Accéder au menu")
                            .font(.custom("PlusJakartaSans-Regular", size: 16))
                            .foregroundColor(.white)
                            .bold()
                            
                    }

                    
                }
                
                Spacer()
                    
            } 
            .padding([.horizontal, .bottom])
            
        } 
    
    }
}

#Preview {
    WelcomeView()
}
