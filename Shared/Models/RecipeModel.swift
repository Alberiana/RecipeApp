//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Alberiana on 4.9.22.
//

import Foundation

enum Category: String{
    case yellow="Yellow cake"
    case white="White Caake"
    case pound="Pound Cake"
    case sponge="Sponge Cake"
}
struct Recipe: Identifiable{
    let id=UUID()
    let name:String
    let image:String
    let description:String
    let ingredients:String
    let directions:String
    let category:Category.RawValue
    let datePublished:String
    
}

extension Recipe{
    static let all:[Recipe]=[
        Recipe(
            name: "Yellow Cake",
            image: "https://i0.wp.com/www.onceuponachef.com/images/2022/05/Yellow-Cake.jpg",
            description: "Recipe of yellow cake",
            ingredients: "Ingredients",
            directions: "This you have to put in the......",
            category: "Yellow Cake",
            datePublished: "2022-9-4"
            )
    ]
}
