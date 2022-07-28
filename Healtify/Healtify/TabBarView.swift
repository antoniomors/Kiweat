//
//  TabBarView.swift
//  Healtify
//
//  Created by Claudio Silvestri on 16/11/21.
//

import SwiftUI

struct TabBarView: View {
    
    
    @StateObject var ArrayRecipes = ArrayModel()
    
    var body: some View {
        TabView(){
            RecipesView(ArrayRecipes: ArrayRecipes)
                .tabItem{
                    Label("Recipes", systemImage: "fork.knife")
                    
                }
            FavoritesView(ArrayRecipes: ArrayRecipes)
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }


            ResearchView(ArrayRecipes: ArrayRecipes)
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                    
                }
        }
        .accentColor(.green)
// accentColor è per colorare la tab
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
