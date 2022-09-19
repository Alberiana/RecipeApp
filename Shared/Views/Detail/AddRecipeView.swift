//
//  AddRecipeView.swift
//  RecipeApp
//
//  Created by Alberiana on 4.9.22.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String=""
    @State private var selectedCategory: Category = Category.yellow
    @State private var description: String=""
    @State private var ingredients: String=""
    @State private var directions: String=""
    @State private var navigateToRecipe=false
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name )
                }
                
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases){category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                    
                }
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                    
                }
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                    
                }
                
                Section(header: Text("Directions")){
                    TextEditor(text: $directions)
                    
                }

            }
            
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button { 
                        dismiss()
                    } label: {
                        Label("Cancle", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }

                ToolbarItem{
                        NavigationLink(isActive: $navigateToRecipe) {
                            RecipeView(recipe: recipesVM.recipes.sorted{$0.datePublished>$1.datePublished}[0])
                                .navigationBarBackButtonHidden(true)
                        } label:{
                            Button{
                                saveRecipe()
                                navigateToRecipe=true
                            } label:{
                                Label("Done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                        
                        }
                        .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}


struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
        
    }
}
extension AddRecipeView{
    private func saveRecipe(){
        let now=Date()

        let dateFormatter=DateFormatter()
        dateFormatter.dateFormat="yyyy-mm-dd"

        let datepPublished=dateFormatter.string(from: now)
        print(datepPublished)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category:selectedCategory.rawValue, datePublished: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
                     
