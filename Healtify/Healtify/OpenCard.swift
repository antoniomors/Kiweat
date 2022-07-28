//
//  OpenCard.swift
//  Healtify
//
//  Created by Antonio Amoroso on 23/11/21.
//

import Foundation
import SwiftUI

struct OpenCardView: View {
    
    @ObservedObject var ArrayRecipes: ArrayModel
    var ind: Int
    
    init(ind: Int, ArrayRecipes: ArrayModel) {
        self.ind = ind
        self.ArrayRecipes = ArrayRecipes
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Image("\(ArrayRecipes.Recipes[ind].Image)")
                    .resizable()
                    .scaledToFill()
                    .scaledToFit()
                    .padding(.bottom)
                    .ignoresSafeArea()
                    
//                (spacing: 70)
                HStack(spacing: 70) {
                    ZStack{
                        HStack {
                    HStack {
                        Image("timer")
                        Text("\(ArrayRecipes.Recipes[ind].Time, specifier: "%.f") min")
                        Spacer()
//                        .padding(.leading, 30)
                    }
                   
//                    Image(ArrayRecipes.Recipes[ind].Difficulty)
//                        .padding(.trailing, 30)
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
                        HStack(alignment: .center) {
                        
                        Image(ArrayRecipes.Recipes[ind].Difficulty)
//                            .padding(.trailing, 30)
                       
                    }
                }
                }
                .padding(.all)
                Spacer()
                Text("\(ArrayRecipes.Recipes[ind].Name)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Ingredients:")
                        .fontWeight(.bold)
                        .font(.title3)
                    .padding()
                    Text("\(ArrayRecipes.Recipes[ind].Ingredients)")
                        .font(.subheadline)
                        .padding()
                        
            Spacer()
                Text("Instructions:")
                    .fontWeight(.bold)
                    .font(.title3)
                    .padding()
                    Text("\(ArrayRecipes.Recipes[ind].Instructions)")
                    .padding()
                }
                
                
                
            }
        }
    }
    
    
    
}

//struct OpenCardView_Previews: PreviewProvider {
//
//
//    static var previews: some View {
//
//    }
//}
