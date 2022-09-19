//
//  RecipeAppApp.swift
//  Shared
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup{
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
