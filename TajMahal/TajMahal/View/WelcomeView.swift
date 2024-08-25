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
                    .scaledToFill()
                    .frame(width: 335, height: 423)
                    .padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurent Indien")
                            .font(.plusJakartaSansRegular(size: 12))
                            .foregroundStyle(.customFont)
                        Text("Taj Mahal")
                            .font(.plusJakartaSansRegular(size: 18))
                            .foregroundStyle(.fontColorBold)
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
                Spacer()
                NavigationLink {
                    MenuView()
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 335, height: 40)
                            .foregroundStyle(.customRed)
                            .frame(height: 40)
                        Text("Accéder au Menu")
                            .font(.PlusJakartaSansBold(size: 16))
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    
                }
            }
            .padding([.horizontal, .bottom])
            
        }
        
    }
    
}


#Preview {
    WelcomeView()
}
