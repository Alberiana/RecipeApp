//
//  RecipesViewModel.swift
//  RecipeApp (iOS)
//
//  Created by Alberiana on 7.9.22.
//

import Foundation

class RecipesViewModel: ObservableObject{
    @Published  private(set) var recipes: [Recipe] = []
    
    init(){
        recipes=Recipe.all
    }
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
