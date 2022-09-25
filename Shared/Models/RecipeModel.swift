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
            directions: "Preheat the oven to 350°F and prepare your cake pans: Spray three 8-inch round cake pans with nonstick cooking spray. It’s also best to line the bottom of each pan with parchment paper to make it easier to remove the cake layers. Whisk together the dry ingredients: In a large mixing bowl, whisk together the cake flour, baking powder, baking soda, and salt. Whisk together the buttermilk, oil, and vanilla: You will mix these in with the dry ingredients later. Cream the butter and sugar together: In the bowl of a stand mixer fitted with the paddle attachment or in a large mixing bowl using a handheld mixer, beat the butter on low speed until smooth, then slowly mix in the granulated sugar. Increase the mixer to medium speed and continue mixing for another 4 to 5 minutes or until the mixture is light and fluffy like the picture above on the left.",
            category: "Yellow",
            datePublished: "2022-9-4"
            ),
        Recipe(name: "White Cake", image: "https://www.seriouseats.com/thmb/K6VksPblIy1WK4EtaXBdydAJLwU=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2018__09__20180924-brown-butter-cake-vicky-wasik-21-a9014e0de9a94d13b6f7b80aedaf834d.jpg", description: "This white cake recipe is the perfect classic white cake. Light and fluffy, moist and full of flavor. There is a joke in the cake world that white is not a flavor, it’s actually a vanilla cake. But a white cake is not just white. Let’s dive into what makes the perfect, best white cake recipe.",
               ingredients: "1 cup white sugar ½ cup unsalted butter 2 large eggs 2 teaspoons vanilla extract ", directions: "A 10-inch round pan will produce similar results. To make cupcakes, line a 12-cup muffin tin with paper liners. Divide batter evenly among the prepared muffin cups, and bake in the preheated oven for 20 to 25 minutes.", category: "White", datePublished: "2022-9-23")
    ]
}
