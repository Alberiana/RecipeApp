//
//  RecipeIngredients.swift
//  RecipeApp
//
//  Created by Alberiana on 8.9.22.
//

import SwiftUI

struct RecipeIngredients: View {
//    @IBOutlet weak var tableView: UITableView
    @State private var showAddRecipe=false
    var recipe: Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder:{
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .frame(height: 300)
            
            VStack(spacing:30){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 29.0){
                    if !recipe.ingredients.isEmpty{
                        VStack(alignment: .leading, spacing: 20){
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    //                    let button=UIButton(
                }
                .accessibilityAddTraits([.isButton])
                .frame(width: 3.0, height: 6.0)
                .padding(.bottom)
                .frame(maxWidth: .infinity, alignment: .leading)
                .accessibilityLabel("Label")
                .accessibilityValue("Value")
                
            }
            .padding(.horizontal)
            
        }
        
        .ignoresSafeArea(.container, edges: .top)
        
        
        
    }
//    }
//    class ViewCntroller: UIViewController!
//
//    override func viewDidLoad
}

struct RecipeIngredients_Previews: PreviewProvider {
    static var previews: some View {
        RecipeIngredients(recipe: Recipe.all[0])
    }
}
