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
                    .padding(.top)
                Image("TajMahal")
                    .resizable()
                    .frame(height: 360)
                    .scaledToFill()
                    .padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurent Indien")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                        Text("Taj Mahal")
                            .font(.title)
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
                VStack(spacing: 0) {
                    LineView(imageName: "clock", leftText: "Mardi", rightText: "Right")
                    LineView(imageName: "arrow.up.bin", leftText: "Type de service", rightText: "A emporter")
                    LineView(imageName: "location.circle", leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
                    LineView(imageName: "globe", leftText: "www.tajmahal.fr", rightText: "")
                    LineView(imageName: "phone", leftText: "0612345678", rightText: "")
                }
                NavigationLink {
                    MenuView()
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.customRed)
                            .frame(height: 40)
                        Text("Accéder au menu")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            
                    }
                    .padding()
                    
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
