//
//  FavoritesView.swift
//  Healtify
//
//  Created by Claudio Silvestri on 16/11/21.
//

import SwiftUI

struct FavoritesView: View {
    
    //    @State private var ShowSeeAll = false
    @State var selection: Int? = nil
    
    @ObservedObject var ArrayRecipes: ArrayModel
   
    
    
    var body: some View {
        
        NavigationView{
            ScrollView (showsIndicators: false){
            VStack{
                HStack(){
//                    Text("Favorites")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .padding()
//                    Spacer()
                    
                    
                }
                
                HStack(){
                    Text("Breakfast")
                        .font(.title2)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: AllFavoritesView(AllCategory: "Breakfast", ArrayRecipes: ArrayRecipes)) {
                        Text("See All")
                    }
                    .padding()
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                            if (ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == "Breakfast") {
                                NavigationLink(destination: OpenCardView(ind: ind , ArrayRecipes: ArrayRecipes)){
                                FavouriteImage(ind: ind, ArrayRecipes: ArrayRecipes)
                            }
                        }
                        
                    }
                    }
                }
                }
                
                HStack(){
                    Text("Main Courses")
                        .font(.title2)
                        .padding()
                    Spacer()
//                    Navigation link da correggere
                    NavigationLink(destination: AllFavoritesView(AllCategory: "Main Courses", ArrayRecipes: ArrayRecipes)) {
                        Text("See All")
                    }
                    .padding()
                    
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                            if 
                                (ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == "Main Courses") {
                                NavigationLink(destination: OpenCardView(ind: ind , ArrayRecipes: ArrayRecipes)){
                            FavouriteImage(ind: ind, ArrayRecipes: ArrayRecipes)
                        }
                        }
                        }
                    }
                    
                }
                
                HStack(){
                    Text("Second Courses")
                        .font(.title2)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: AllFavoritesView(AllCategory: "Second Courses", ArrayRecipes: ArrayRecipes)) {
                        Text("See All")
                    }
                    .padding()
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                            if (ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == "Second Courses") {
                                NavigationLink(destination: OpenCardView(ind: ind , ArrayRecipes: ArrayRecipes)){
                                FavouriteImage(ind: ind, ArrayRecipes: ArrayRecipes)
                            }
                        }
                        }
                    }
                    
                }
                
                HStack(){
                    Text("Snack/Dessert")
                        .font(.title2)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: AllFavoritesView(AllCategory: "Snack", ArrayRecipes: ArrayRecipes)) {
                        Text("See All")
                    }
                    .padding()
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<ArrayRecipes.Recipes.count) { ind in
                            if ((ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == "Snack") || (ArrayRecipes.Recipes[ind].IsFavourite == true && ArrayRecipes.Recipes[ind].RecipeType == "Dessert")) {
                                NavigationLink(destination: OpenCardView(ind: ind , ArrayRecipes: ArrayRecipes)){
                                FavouriteImage(ind: ind, ArrayRecipes: ArrayRecipes)
                            }
                        }
                        }
                    }
                    
                }
                
                Spacer()
                
            }
//            .accentColor(.green)
            .navigationTitle("Favorites")
            
        }

    }

}

//struct FavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoritesView()
//    }
//}
