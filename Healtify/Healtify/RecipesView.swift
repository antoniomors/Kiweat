//
//  RecipesView.swift
//  Healtify
//
//  Created by Claudio Silvestri on 16/11/21.
//
import SwiftUI


struct RecipesView: View {
    
    @ObservedObject var ArrayRecipes: ArrayModel

    var body: some View {
        

        // comando scroll view va come una stack
        NavigationView {
            ScrollView (showsIndicators: false) {
                Divider()
                    .padding()
                VStack(spacing: 10) {
                    ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                    // inizio gruppi carte
                        RecipeCard(ind: ind, ArrayRecipes: ArrayRecipes)
                
                    
                    // fine gruppo carte
                }
                }

            } .navigationTitle("Recipes")
        }
    }
}

//struct RecipesView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView()
//    }
//}
