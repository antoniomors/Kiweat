//
//  AllFavoritesView.swift
//  Healtify
//
//  Created by Claudio Silvestri on 17/11/21.
//

import SwiftUI


// c

struct AllFavoritesView: View {
    
    @ObservedObject var ArrayRecipes: ArrayModel
    
    let AllCategory: String
        
    init(AllCategory: String, ArrayRecipes: ArrayModel) {
        self.AllCategory = AllCategory
        self.ArrayRecipes = ArrayRecipes
        
    }
    
    
    var body: some View {
       
        
        List {
                ForEach (0..<ArrayRecipes.Recipes.count)
                { ind in
                    if (ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == AllCategory) {
                        NavigationLink (destination: OpenCardView(ind: ind, ArrayRecipes: ArrayRecipes)){
                    AllFavouriteImage(ind: ind, ArrayRecipes: ArrayRecipes)
                        }
                    }
                }
            } .listStyle(.plain)
            .navigationTitle("\(AllCategory)").padding(.bottom, 40)
            
        }
    }
        
    

//struct AllFavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllFavoritesView(AllCategory: "Main Courses", Recipe: ArrayRecipes)
//    }
//}
