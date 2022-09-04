//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView{
            Text("My recipes")
            .navigationTitle("My recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
