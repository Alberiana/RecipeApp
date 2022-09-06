//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Alberiana on 4.9.22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String{
        self.rawValue
    }
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
            description: "Everyone needs an easy homemade Yellow Cake recipe in their cookbook arsenal, and this recipe is moist, tender and  overall fantastic! There is something so yummy about a simple yellow cake, especially when it’s coated in the BEST homemade chocolate frosting.  This recipe is really easy and perfect for any baking skill level (including those of you who have never made a cake from scratch in your life)!,",
            ingredients: "Ingredients",
            directions: "This you have to put in the......",
            category: "Yellow",
            datePublished: "2022-9-4"
            ),
        Recipe(name: "White Cake", image: "https://savorthebest.com/wp-content/uploads/2021/03/a-slice-of-white-chocolate-cake-next-to-a-large-cake_9071.jpg", description: "This white cake recipe is the perfect classic white cake. Light and fluffy, moist and full of flavor. There is a joke in the cake world that white is not a flavor, it’s actually a vanilla cake. But a white cake is not just white. Let’s dive into what makes the perfect, best white cake recipe.",
               ingredients: "1 cup white sugar ½ cup unsalted butter 2 large eggs 2 teaspoons vanilla extract ", directions: "A 10-inch round pan will produce similar results. To make cupcakes, line a 12-cup muffin tin with paper liners. Divide batter evenly among the prepared muffin cups, and bake in the preheated oven for 20 to 25 minutes.", category: "White", datePublished: "2022-9-23")
    ]
}
