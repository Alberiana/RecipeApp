//
//  Database.swift
//  RecipeApp
//
//  Created by Alberiana on 24.9.22.
////
//
//import Foundation
//import SQLite3
//
//class Database{
//    static let sharedInstance=Database()
//    var database: Connection?
//
//    private init(){
//        //create connection to database
//        do{
//            let documentDirectory=try
//            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
//
//            let fileUrl=documentDirectory
//                .appendingPathComponent("Recipee")
//                .appendingPathExtension("sqlite3")
//
//            database=try Connection(fileUrl.path)
//
//        }catch{
//            print("Creating connection to database error: \(error)")
//        }
//    }
//
//    func createTable
//}
