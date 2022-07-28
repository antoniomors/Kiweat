//
//  ResearchView.swift
//  Healtify
//
//  Created by Claudio Silvestri on 16/11/21.
//

import SwiftUI

struct ResearchView: View {
    //    @State var searchResult = ""
    let ingredients = ["banana", "bread", "avocado"]
    
    var filteredIngredients: [String] {
        if searchText.isEmpty {
            return []
        } else {
            return ingredients.filter{ $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    
    
    //    var Categories = ["Breakfast", "First Course", "Second Course", "Snack/Dessert"]
    @State var averageTime: Double = 5
    @State var scale = 0.0
    @State var selectedTag = "Easy"
    @State var searchText = ""
    @State var selectedCourse = "Breakfast"
    @State var showingsheet: Bool = false
    @State private var isEditing = false
    
    @ObservedObject var ArrayRecipes: ArrayModel
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                ZStack {
                    
                    HStack {
//                        TextField("Choose your ingredients", text: $searchText)
//                            .padding(7)
//                            .padding(.horizontal, 25)
//                            .background(Color(.systemGray6))
//                            .cornerRadius(8)
//                            .overlay(
//                                HStack {
//                                    Image(systemName: "magnifyingglass")
//                                        .foregroundColor(.gray)
//                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                        .padding(.leading, 8)
//
//
//                                    Button(action: {
//                                        self.searchText = ""
//                                    }) {
//                                        Image(systemName: "multiply.circle.fill")
//                                            .foregroundColor(.gray)
//                                            .padding(.trailing, 8)
//                                    }
//
//                                }
//                            )
//                            .padding(.horizontal, 10)
//                            .onTapGesture {
//                                self.isEditing = true
//                            }
                        //
//                        Button(action: {
//                            self.searchText = ""
//                            
//                        }) {
//                            Text("Add")
//                        }
                        
                        //                        .searchable(text: $searchText, prompt: "Choose your ingredients")
                        
                        
                        
                    }
                    
                }
                
                HStack{
                    List(filteredIngredients, id: \.self) {ingredients in
                        Text(ingredients)
                        Text("\(ingredients)").searchCompletion("\(ingredients)")

                    }
                    .listStyle(.plain)
                }
                
                
                
                HStack{
                    Text("Category")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    Spacer()
                }
                VStack{
                HStack{
                    
                    if (selectedCourse == "Breakfast")
                    {
                        Button ("Breakfast") {
                            selectedCourse = "Breakfast"
                        }
                        .frame(width: 150, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(13)
                        .buttonStyle(.borderedProminent)
                        .padding(.horizontal)
                    }
                    else
                    {
                        Button ("Breakfast") {
                            selectedCourse = "Breakfast"
                        }
                        .frame(width: 150, height: 35)
                        .tint(Color(white: 0.82))
                        .background(Color.init(white: 0.82))
                        .cornerRadius(13)
                        .buttonStyle(.borderedProminent)
                        .padding(.horizontal)
                    }

                    
                    if (selectedCourse == "Main Courses")
                    {
                        Button ("Main Courses") {
                            selectedCourse = "Main Courses"
                        }
                        .frame(width: 150, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(13)
                        .buttonStyle(.borderedProminent)
                        .padding(.horizontal)
                    }
                    else
                    {
                        Button ("Main Courses") {
                            selectedCourse = "Main Courses"
                        }
                        .frame(width: 150, height: 35)
                        .tint(Color(white: 0.82))
                        .background(Color.init(white: 0.82))
                        .cornerRadius(13)
                        .buttonStyle(.borderedProminent)
                        .padding(.horizontal)
                    }

                }
                    HStack{
                        if (selectedCourse == "Second Courses")
                        {
                            Button ("Second Courses") {
                                selectedCourse = "Second Courses"
                            }
                            .frame(width: 150, height: 35)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(13)
                            .buttonStyle(.borderedProminent)
                            .padding(.horizontal)
                        }
                        else
                        {
                            Button ("Second Courses") {
                                selectedCourse = "Second Courses"
                            }
                            .frame(width: 150, height: 35)
                            .tint(Color(white: 0.82))
                            .background(Color.init(white: 0.82))
                            .cornerRadius(13)
                            .buttonStyle(.borderedProminent)
                            .padding(.horizontal)
                        }
                        if (selectedCourse == "Snack")
                        {
                            Button ("Snack/Dessert") {
                                selectedCourse = "Snack"
                            }
                            .frame(width: 150, height: 35)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(13)
                            .buttonStyle(.borderedProminent)
                            .padding(.horizontal)
                        }
                        else
                        {
                            Button ("Snack/Dessert") {
                                selectedCourse = "Snack"
                            }
                            .frame(width: 150, height: 35)
                            .tint(Color(white: 0.82))
                            .background(Color.init(white: 0.82))
                            .cornerRadius(13)
                            .buttonStyle(.borderedProminent)
                            .padding(.horizontal)
                        }
                }
                .padding(.vertical)
//                    Picker("Course", selection: $selectedCourse) {
//                        Text("All").tag("All")
//                        Text("Breakfast").tag("Breakfast")
//                        Text("Main Course").tag("Main Courses")
//                        Text("Second Course").tag("Second Courses")
//                        Text("Snack/Dessert").tag("Snack")
//                    }
                    //                .pickerStyle(.wheel)
//                    .pickerStyle(.segmented)
//                    .padding(7)
//                    .padding(.horizontal, 25)
//                    .background(Color(.systemGray6))
//                    .cornerRadius(8)
                

                
                
                
                HStack{
                    Text("Difficulty")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    
                    Spacer()
                }
                
                HStack{
                    Picker("", selection: $selectedTag) {
                        Image(systemName: "flame.fill").tag("Easy")
                        Image("double flame").tag("Medium")
                        Image("triple flame").tag("Hard")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                }
                
                HStack{
                    Text("Average time")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                
                HStack{
                    Slider(value: $averageTime, in: 5...15, step: 1)
                }
                
                HStack{
                    Text("\(averageTime, specifier: "%.f") minutes")
                }
                HStack {
                    NavigationLink(destination: SearchResults(averageTime: averageTime, selectedTag: selectedTag, selectedCourse: selectedCourse, ArrayRecipes: ArrayRecipes)) {
                        Text("Find recipes")
                            .font(.title3)
                            .frame(width: 150, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(13)
                    }
                    .padding()
                    
                    
                    Button ("Cancel") {
                        averageTime = 5
                        selectedTag = "Easy"
                        searchText = ""
                        selectedCourse = "Breakfast"
                    }
                    .frame(width: 150, height: 50)
                    .tint(Color(white: 0.82))
                    .background(Color.init(white: 0.82))
                    .cornerRadius(13)
                    .buttonStyle(.borderedProminent)
                    .padding()
                    
                    
                }
                
                //               Spacer()
            }
            .navigationTitle("Search")
            .padding()
            
        }
        .searchable(text: $searchText){
            
            Text("Avocado").searchCompletion("Avocado")
            Text("Banana").searchCompletion("Banana")
            Text("Bread").searchCompletion("Bread")
            
            
        }
        
    }
}

//struct ResearchView_Previews: PreviewProvider {
//
//
//    static var previews: some View {
//        ResearchView()
//    }
//}
}
