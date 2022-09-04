//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView{
            Text("You havent saved any recipe to your favorites yet")
                .padding()
            .navigationTitle("Favorites View")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
