//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI


struct FavoritesView: View {
    var titles=["Yellow Cake", "White Cake", "Black Cake"]
    var body: some View {
        NavigationView{
            List(0..<titles.count){index in
                HStack{
                    Image(self.titles[index]).resizable().frame(width: 60, height:60)
                    Text(self.titles[index])
                }
            }
            .navigationTitle("Favorites Recipe")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
