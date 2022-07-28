//
//  SearchResults.swift
//  Healtify
//
//  Created by Chiara Gentile on 23/11/21.
//

import SwiftUI

struct SearchResults: View {
    
    @ObservedObject var ArrayRecipes: ArrayModel
    
    let averageTime: Double
    let selectedTag: String
    let selectedCourse: String
        
    init(averageTime: Double, selectedTag: String, selectedCourse: String, ArrayRecipes: ArrayModel) {

        self.averageTime = averageTime
        self.selectedTag = selectedTag
        self.selectedCourse = selectedCourse
        self.ArrayRecipes = ArrayRecipes
        
    }
    
    var body: some View {
        
            ScrollView (showsIndicators: false) {
                Divider()
                    .padding()
                VStack(spacing: 10) {
                    ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                    // inizio gruppi carte
                        if(ArrayRecipes.Recipes[ind].Time <= averageTime && ArrayRecipes.Recipes[ind].Difficulty == selectedTag && ArrayRecipes.Recipes[ind].RecipeType == selectedCourse)
                        {
                            RecipeCard(ind: ind, ArrayRecipes: ArrayRecipes)
                        }

                    // fine gruppo carte
                }
                }.navigationTitle("Results")

            }
        

    }
}

//struct SearchResults_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchResults(AllFiltered: "Your Search", ArraySearch: ArrayModel)
//    }
//}
