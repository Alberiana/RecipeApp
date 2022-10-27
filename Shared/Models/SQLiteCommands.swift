//
//  SQLiteCommands.swift
//  RecipeApp
//
//  Created by Alberiana on 13.10.22.
//
//
//import Foundation
//import SQLite
//
//class SQLiteCommands {
//    private var db: Connection!
//    private var users: Table!
//    static var table = Table("recipes")
//    private let id = Expression<Int64>!
//    private var name: Expression<String>!
//    public var image: Expression<String>!
//    public var description: Expression<String>!
//    public var ingredients: Expression<String>!
//    public var directions: Expression<String>!
//    // Creating Table
//    static func createTable() {
//        guard let database = Database.sharedInstance.database else {
//            print("Datastore connection error")
//            return
//        }
//
//        do {
//            // ifNotExists: true - Will NOT create a table if it already exists
//            try database.run(table.create(ifNotExists: true) { table in
//                table.column(id, primaryKey: true)
//                table.column(name)
//                table.column(image)
//                table.column(description)
//                table.column(ingredients)
//                table.column(directions)
//            })
//        } catch {
//            print("Table already exists: \(error)")
//        }
//    }
//
//    // Inserting Row
//    static func insertRow(_ contactValues:Recipe) -> Bool? {
//        guard let database = Database.sharedInstance.database else {
//            print("Datastore connection error")
//            return nil
//        }
//
//        do {
//            try database.run(table.insert(name <- contactValues.name, image <- contactValues.image, description <- contactValues.description,ingredients <- contactValues.ingredients,directions <- contactValues.directions))
//            return true
//        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
//            print("Insert row failed: \(message), in \(String(describing: statement))")
//            return false
//
//        } catch let error {
//            print("Insertion failed: \(error)")
//            return false
//        }
//    }
//
//
//
//
//
//
//}
