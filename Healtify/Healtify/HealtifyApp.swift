//
//  HealtifyApp.swift
//  Healtify
//
//  Created by Claudio Silvestri on 16/11/21.
//

import SwiftUI

@main
struct HealtifyApp: App {
    
//    @EnvironmentObject var Recipe: RecipesModel

//    @StateObject var Panzanella = RecipesModel(Name: "Panzanella", Image: "Panzanella", RecipeType: "Main Courses", Ingredients: "Bread Tomatoes", Tutorial: "Cut the tomatoes", Difficulty: 1, IsFavourite: false)
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}
