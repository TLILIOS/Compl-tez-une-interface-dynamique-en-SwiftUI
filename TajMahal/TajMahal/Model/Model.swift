//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation
import SwiftUI
// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    //To be fexe
    case light
    case medium
    case hot
    
}
// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: String
}
