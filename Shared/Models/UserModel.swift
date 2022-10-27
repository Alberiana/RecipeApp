//
//  UserModel.swift
//  RecipeApp
//
//  Created by Alberiana on 12.10.22.
//

import Foundation

class UserModel: Identifiable{
    public var id: Int64=0
    public var name: String=""
    public var image: String=""
    public var description: String=""
    public var ingredients: String=""
    public var directions: String=""
}
