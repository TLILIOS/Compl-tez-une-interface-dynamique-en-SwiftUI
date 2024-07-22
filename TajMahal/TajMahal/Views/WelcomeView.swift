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
                Image("TajMahal")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 423)
                HStack {
                    VStack {
                        Text("Restaurent Indien")
                            .font(.caption)
                            .opacity(0.6)
                        Text("Taj Mahal")
                            .font(.headline)
                    }
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.red)
                }
                .padding()
                VStack {
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
                }
            }
            .padding()
            Spacer()
        }
      
    }
}

#Preview {
    WelcomeView()
}
