//
//  RecipeImage.swift
//  Healtify
//
//  Created by Claudio Silvestri on 17/11/21.
//

import SwiftUI




struct FavouriteImage: View {
    
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
        VStack{
            Image("\(ArrayRecipes.Recipes[ind].Image)")
            .resizable()
            .foregroundColor(.white)
            .cornerRadius(15)
            .frame(width: 180, height: 140)
            .shadow(color: .gray, radius: 15, x: 0.0, y: 11.0)
            .padding()
            
            Text("\(ArrayRecipes.Recipes[ind].Name)")
                .font(.body)
                
        }

    }
}

//
//struct RecipeImage_Previews: PreviewProvider {
//    static var previews: some View {
//        FavouriteImage()
//    }
//}
