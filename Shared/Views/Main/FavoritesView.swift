//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI


struct FavoritesView: View {
    @State private var isShowingCake=false
    var titles=["Yellow Cake", "White Cake", "Black Cake"]
    var body: some View {
        NavigationView{
            List(0..<titles.count){
                             index in
                HStack{
                    Image(self.titles[index]).resizable().frame(width: 60, height:60)
                    Text(self.titles[index])
                        .alert(isPresented: $isShowingCake){
                        
                            Alert(title: Text("Here you cant see all recipe only favorites Recipe Cake"))
                        }
                }.onAppear(){
                    isShowingCake=true
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
