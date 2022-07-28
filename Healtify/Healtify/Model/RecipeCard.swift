//
//  RecipeCard.swift
//  Healtify
//
//  Created by Claudio Silvestri on 18/11/21.
//

import SwiftUI

struct RecipeCard: View {
    
    @State var Favorite: Bool = false

    @ObservedObject var ArrayRecipes: ArrayModel
    
    
    var ind: Int

    init(ind: Int, ArrayRecipes: ArrayModel) {
        self.ind = ind
        self.ArrayRecipes = ArrayRecipes
    }
    //    @Binding var ind: Int
    
    var body: some View {
        
        NavigationLink(destination: OpenCardView(ind: ind, ArrayRecipes: ArrayRecipes))
        {
            
            VStack{
                HStack{
                    Text("\(ArrayRecipes.Recipes[ind].Name)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding([.top, .leading, .trailing])
                    
                    Spacer()
                }
                
                Image("\(ArrayRecipes.Recipes[ind].Image)")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 380, height: 365)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 30, x: 0.0, y: 22.0)
                    .padding()
                    .overlay(){
                        VStack{
                            
                            Spacer()
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .frame(width: 380, height: 48)
                                .padding()
                                .overlay(){
                                    ZStack{
                                    HStack{
                                        
                                            
                                            
                                        Group{
                                            HStack{
                                                Image("timer")
                                                Text("\(ArrayRecipes.Recipes[ind].Time, specifier: "%.f") Min")
                                                    .foregroundColor(.black)
                                            }
                                            
                                        }
                                        .padding(.leading, 35.0)
                                        
                                        Spacer()
                                        
                                        if (ArrayRecipes.Recipes[ind].IsFavourite == false)
                                        {
                                            Button(action: {
                                                ArrayRecipes.Recipes[ind].IsFavourite.toggle()
//                                                ArrayRecipes.Recipes[ind].IsFavourite = true
                                                //                                        Haptic feedback
                                                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                                                impactMed.impactOccurred()
                                            }) {
                                                Image(systemName: "heart")
                                                    .resizable()
                                                    .frame(width: 25, height: 23)
                                                    .foregroundColor(.red)
                                                    .padding(.trailing, 35.0)
                                            }
                                            
                                            
                                        }
                                        else
                                        {
                                            Button(action: {
                                                ArrayRecipes.Recipes[ind].IsFavourite.toggle()
//                                                ArrayRecipes.Recipes[ind].IsFavourite = false
                                                //                                        Haptic feedback
                                                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                                                impactMed.impactOccurred()
                                            }) {
                                                Image(systemName: "heart.fill")
                                                    .resizable()
                                                    .frame(width: 25, height: 23)
                                                    .foregroundColor(.red)
                                                    .padding(.trailing, 35.0)
                                            }
                                            
                                            
                                            
                                        }
                                            
                                        }
                                        
                                        
                                    }
                                    HStack{
                                    Spacer()
                                    
                                    Image("\(ArrayRecipes.Recipes[ind].Difficulty)")
                                        .frame(width: 25, height: 23)
                                        .padding()
                                    Spacer()
                                }
                                    
                                    
                                    
                                    
                                }
                        }
                        
                        
                    }
                
            }
            
        }
        
        Divider()
            .padding()
        
        
    }
}

//struct RecipeCard_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        RecipeCard(ind: 0, ArrayRecipes:)
//    }
//}
