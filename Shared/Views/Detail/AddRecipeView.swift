//
//  AddRecipeView.swift
//  RecipeApp
//
//  Created by Alberiana on 4.9.22.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String=""
    @State private var selectedCategory: Category = Category.yellow
    @State private var description: String=""
    @State private var ingredients: String=""
    @State private var directions: String=""
    
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
                    //e vendos by default vleren
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
                        Button {
                            
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
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
    }
}
                     
                     
                     
