//
//  TajMahalApp.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

@main
struct TajMahalApp: App {
    //printing the list of fonts to check their existence and functioning
//    init() {
//        for fontFamily in UIFont.familyNames {
//            for font in UIFont.fontNames(forFamilyName: fontFamily) {
//                print("-\(font)")
//            }
//        }
//    }
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}
