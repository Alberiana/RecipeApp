//
//  TabBar.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            
            AddRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
           
//            SettingView()
//                .tabItem{
//                    Label("Setting", systemImage: "gear")
//                }
//
        }
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
