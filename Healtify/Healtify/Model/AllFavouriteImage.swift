//
//  AllFavouriteImage.swift
//  Healtify
//
//  Created by Claudio Silvestri on 17/11/21.
//

import SwiftUI

struct AllFavouriteImage: View {
    
//    var Recipe: RecipesModel
//
//    init(Recipe: RecipesModel) {
//        self.Recipe = Recipe
//    }
    @ObservedObject var ArrayRecipes: ArrayModel
    
    var ind: Int

    init(ind: Int, ArrayRecipes: ArrayModel) {
        self.ind = ind
        self.ArrayRecipes = ArrayRecipes
    }
    
    var body: some View {
        HStack(spacing: 50) {
            Image("\(ArrayRecipes.Recipes[ind].Image)")
        .resizable()
        .foregroundColor(.white)
        .cornerRadius(15)
        .frame(width: 120, height: 120)
        .shadow(color: .gray, radius: 15, x: 0.0, y: 10.0)
        .padding()
            Text("\(ArrayRecipes.Recipes[ind].Name)")
                .font(.subheadline)
                .font(.system(size: 20))
        }
        
    }
}

//struct AllFavouriteImage_Previews: PreviewProvider {
//    static var previews: some View {
//        AllFavouriteImage(Recipe: ArrayRecipes.Recipes[0])
//        
//    }
//}
