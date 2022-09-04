//
//  HomeView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            List(Recipe.all) { recipe in
                Text(recipe.name)
                    .navigationTitle("My recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
