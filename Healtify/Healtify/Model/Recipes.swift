//
//  RecipesModel.swift
//  Healtify
//
//  Created by Claudio Silvestri on 17/11/21.
//

import SwiftUI

// observableobject serve per rendere la classe osservabile a tutte le view (?)

struct RecipesModel {
    
    internal init(Name: String, Image: String, RecipeType: String, IngredientsList: [String], Ingredients: String, Instructions: String, Notes: String, Difficulty: String, IsFavourite: Bool, Time: Double) {
        
        self.Name = Name
        self.Image = Image
        self.RecipeType = RecipeType
        self.IngredientsList = IngredientsList
        self.Ingredients = Ingredients
        self.Instructions = Instructions
        self.Notes = Notes
        self.Difficulty = Difficulty
        self.IsFavourite = IsFavourite
        self.Time = Time
    }

    let Name: String
    let Image: String
    let RecipeType: String
    let IngredientsList: [String]
    let Ingredients: String
    let Instructions: String
    let Notes: String
    let Difficulty: String
    let Time: Double
    var IsFavourite: Bool
    
}

class ArrayModel: ObservableObject{
    
    @Published var Recipes: [RecipesModel]
    
    init()
    {
        self.Recipes = [
            RecipesModel(Name: "Avocado Toast", Image: "AvocadoToast", RecipeType: "Breakfast", IngredientsList: ["Bread", "Avocado"], Ingredients: "1 slice Bread\n1/2 ripe avocado\nPinch of salt\nOptional: Any extra topping you prefer", Instructions: "Toast your slice of bread until it will be golden and firm.\nRemove the pit from your avocado. Use a big spoon to scoop out the flesh. Put it in a bowl and mash it up with a fork until it’s as smooth as you want. Add a pinch of salt (about 1/8 teaspoon) and mix it. Feel free to add more.\nSpread avocado on top of your toast.", Notes: "MAKE IT GLUTEN FREE: Use gluten-free bread.", Difficulty: "Easy", IsFavourite: false, Time: 10),
            RecipesModel(Name: "Banana Bread Hummus", Image: "BananaBread", RecipeType: "Snack", IngredientsList: ["Hummus", "Banana"], Ingredients: "10 ounces plain hummus\n 1 banana\n 1 teaspoon vanilla extract\n 1 teaspoon cinnamon (plus extra for garnish)\n 1 tablespoon brown sugar\n Walnuts (optional)", Instructions: "Chop up the banana.\n In a blender, mix hummus, banana slices, vanilla extract and cinnamon. Blend until it’s as smooth as you want.\n With a spoon, stir in walnuts, chopped strawberries or chocolate chips.\n Top with cinnamon, walnuts, or whatever else you desire. Eat with crackers, pretzels, or apple slices.", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10),
            RecipesModel(Name: "3 Ingredient-Pancakes", Image: "3IngredientPancakes", RecipeType: "Breakfast", IngredientsList: ["Eggs", "Banana", "Coconut oil"], Ingredients: "8 eggs\n 4 ripe bananas\n coconut oil", Instructions: "Mash 4 bananas with 8 eggs and grease a pan with coconut oil before pouring the batter. Add more ingredients to the mix like cinnamon, vanilla extract or blueberries.", Notes: "To freeze, when completely cooled, wrap pancakes individually in plastic wrap, then place in a freezer-safe bag and place into freezer. Re-heat in the oven, the microwave or in a toaster on busy mornings.", Difficulty: "Easy", IsFavourite: false, Time: 15),
            RecipesModel(Name: "Loaded Veggie Frittata", Image: "VeggieFrittata", RecipeType: "Main Courses", IngredientsList: ["Eggs", "Kale", "Onion", "Tomato", "Parmesan Cheese"], Ingredients: "4 eggs\n 2 cups kale leaves (torn from 1 small bunch of kale)\n 1/2 small onion, diced\n 1 plum tomato, sliced (or another kind of small tomato)\n 3-4 tablespoons freshly grated Parmesan Cheese\n 2 teaspoons olive oil\n Salt and pepper", Instructions: "Beat the eggs with a fork or a whisk and season with salt and pepper.\n Heat the olive oil in a 8 or 9-inch skillet, and add the onion. Cook over medium heat for 2-3 minutes, or until the onion softens. Add the kale, and cook uncovered for 2-3 minutes. Season with salt & pepper, stir one more time, and cover with the lid to let the heat inside the pan cook down the kale leaves for 1 minute.\n Lower the heat to the lowest it will go. Pour the eggs over the kale, and use a spatula to distribute the scrambled eggs evenly all around the pan. If there are any kale leaves sticking out out of the eggs, just push them into the egg mixture.\n Arrange the tomato slices on top of the eggs.\n Sprinkle with 3-4 tablespoons shredded Parmesan cheese. Cover with the lid and cook for about 5 minutes over low heat, or until the eggs are all set and cooked through.\n Remove from pan with a spatula and slice into wedges.", Notes: "", Difficulty: "Medium", IsFavourite: false, Time: 15),
            RecipesModel(Name: "Chocolate, Banana and Spinach Smoothie", Image: "CBSSmoothie", RecipeType: "Snack", IngredientsList: ["Banana", "Milk", "Cocoa Powder", "Spinach", "Chocolate"], Ingredients: "1 frozen banana\n 1⁄2 cup almond milk or other dairy-free mill\n 1 tablespoon almond butter\n 1 tablespoon cocoa powder\n 1 tablespoon maple syrup\n 1 cup spinach", Instructions: "Add the smoothie bowl ingredients to a blender and blend until smooth.\n Pour into a bowl and garnish with chocolate and the banana slices. You can add other fruits, almond, nut - what you prefer as topping!", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10),
            RecipesModel(Name: "Peanut Butter & Banana Toast", Image: "SproutedGrainToast", RecipeType: "Breakfast", IngredientsList: ["Banana", "Peanut Butter", "Grain Bread"], Ingredients: "2 slices sprouted grain bread\n 1tablespoon peanut butter\n 1 banana, sliced ", Instructions: "Toast bread. Spread the peanut butter on the toasts and top with banana slices.", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 5),
            RecipesModel(Name: "Pasta with Genovese pesto", Image: "pastapesto", RecipeType: "Main Courses", IngredientsList: ["Pasta", "Pesto", "Tomatoes"], Ingredients: "", Instructions: "", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10),
            RecipesModel(Name: "Grilled Chicken breasts with salad", Image: "pollo", RecipeType: "Second Courses", IngredientsList: ["Chicken breasts", "Salad", ""], Ingredients: "", Instructions: "", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10),
        RecipesModel(Name: "Avocado Chicken Salad", Image: "chickensalad", RecipeType: "Second Courses", IngredientsList: ["avocado", "chicken", "tomato", "lattuce"], Ingredients: "1 avocado\n1/2 tablespoon extra virgin olive oil\n1/2 tablespoon lemon juice\n1/3 cup fat free Greek yogurt\n1 tablespoon fresh parsley\nsalt and pepper to taste\n1 cup diced celery\n2 chicken breast\ntomato slices\nlattuce", Instructions: "Rub the chicken breasts with e.v. oil, then season. Place pan over a medium heat for 1 minute, then lay down the chicken (it will sizzle if the pan is hot enough) and leave for 4 minutes. Then turn the chicken and leave for 4 minutes.\nIn the meanwhile, start to prepare the avocado sauce.\nPeel the avocado and remove the pit from it. Place avocado and lemon juice in a bowl and mash until it’s almost smooth (don’t worry if you have some chunks).\nStill in yogurt, parsley, parsley, salt and pepper. Add chicken and mix.", Notes: "", Difficulty: "Hard", IsFavourite: false, Time: 15),
        RecipesModel(Name: "Creamy Cauliflower Pasta", Image: "cauliflower pasta", RecipeType: "Main Courses", IngredientsList: ["cauliflower", "pasta"], Ingredients: "1/4 eschalot, thinly sliced\n1/4 garlic clove, crushed\n120g cauliflower, cut into small florets\n1 1/4 cups milk\n1/3 cup grated parmesan\nsalt and pepper to taste\n1/4 cup diced celery\n1 chicken breast\ntomato slices\nlattuce", Instructions: "Place eschalot, garlic and cauliflower in a baking pan. Add 1 tablespoon water and bake at 180° for 5 minutes or until very tender. Transfer mixture to a food processor. Add milk and parmesan. Season with salt and pepper. Process until smooth.\nMeanwhile, cook pasta. Drain. Cover to keep warm.\nHeat oil in a large, deep frying pan over medium heat. Add almonds and sage. Cook for 1 to 2 minutes or until almonds are golden. Transfer half the mixture to a bowl. Reduce heat to low. Add cauliflower mixture, chicken and pasta.\nSeason with salt and pepper. Stir for 1 to 2 minutes or until heated through. Sprinkle with remaining almond mixture and extra parmesan.", Notes: "", Difficulty: "Hard", IsFavourite: false, Time: 15)]
    }
}

//var AvocadoToast = RecipesModel(Name: "Avocado Toast", Image: "AvocadoToast", RecipeType: "Breakfast", IngredientsList: ["Bread", "Avocado"], Ingredients: "1 slice Bread\n 1/2 ripe avocado\nPinch of salt\n Optional: Any extra topping you prefer", Instructions: "Toast your slice of bread until it will be golden and firm. Remove the pit from your avocado. Use a big spoon to scoop out the flesh. Put it in a bowl and mash it up with a fork until it’s as smooth as you want. Add a pinch of salt (about 1/8 teaspoon) and mix it. Feel free to add more. /n Spread avocado on top of your toast.", Notes: "MAKE IT GLUTEN FREE: Use gluten-free bread.", Difficulty: "Easy", IsFavourite: false, Time: 10)
//
//var BananaBread = RecipesModel(Name: "Banana Bread Hummus", Image: "BananaBread", RecipeType: "Snack", IngredientsList: ["Hummus", "Banana"], Ingredients: "10 ounces plain hummus\n 1 banana\n 1 teaspoon vanilla extract\n 1 teaspoon cinnamon (plus extra for garnish)\n 1 tablespoon brown sugar\n Walnuts (optional)", Instructions: "Chop up the banana.\n In a blender, mix hummus, banana slices, vanilla extract and cinnamon. Blend until it’s as smooth as you want.\n With a spoon, stir in walnuts, chopped strawberries or chocolate chips.\n Top with cinnamon, walnuts, or whatever else you desire. Eat with crackers, pretzels, or apple slices.", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10)
//
//var Pancakes3Ingredient = RecipesModel(Name: "3 Ingredient-Pancakes", Image: "3IngredientPancakes", RecipeType: "Breakfast", IngredientsList: ["Eggs", "Banana", "Coconut oil"], Ingredients: "8 eggs\n 4 ripe bananas\n coconut oil", Instructions: "Mash 4 bananas with 8 eggs and grease a pan with coconut oil before pouring the batter. Add more ingredients to the mix like cinnamon, vanilla extract or blueberries.", Notes: "To freeze, when completely cooled, wrap pancakes individually in plastic wrap, then place in a freezer-safe bag and place into freezer. Re-heat in the oven, the microwave or in a toaster on busy mornings.", Difficulty: "Easy", IsFavourite: false, Time: 15)
//
//var VeggieFrittata = RecipesModel(Name: "Loaded Veggie Frittata", Image: "VeggieFrittata", RecipeType: "Main Courses", IngredientsList: ["Eggs", "Kale", "Onion", "Tomato", "Parmesan Cheese"], Ingredients: "4 eggs\n 2 cups kale leaves (torn from 1 small bunch of kale)\n 1/2 small onion, diced\n 1 plum tomato, sliced (or another kind of small tomato)\n 3-4 tablespoons freshly grated Parmesan Cheese\n 2 teaspoons olive oil\n Salt and pepper", Instructions: "Beat the eggs with a fork or a whisk and season with salt and pepper.\n Heat the olive oil in a 8 or 9-inch skillet, and add the onion. Cook over medium heat for 2-3 minutes, or until the onion softens. Add the kale, and cook uncovered for 2-3 minutes. Season with salt & pepper, stir one more time, and cover with the lid to let the heat inside the pan cook down the kale leaves for 1 minute.\n Lower the heat to the lowest it will go. Pour the eggs over the kale, and use a spatula to distribute the scrambled eggs evenly all around the pan. If there are any kale leaves sticking out out of the eggs, just push them into the egg mixture.\n Arrange the tomato slices on top of the eggs.\n Sprinkle with 3-4 tablespoons shredded Parmesan cheese. Cover with the lid and cook for about 5 minutes over low heat, or until the eggs are all set and cooked through.\n Remove from pan with a spatula and slice into wedges.", Notes: "", Difficulty: "Medium", IsFavourite: false, Time: 15)
//
//var CBSSmoothie = RecipesModel(Name: "Chocolate, Banana and Spinach Smoothie", Image: "CBSSmoothie", RecipeType: "Snack", IngredientsList: ["Banana", "Milk", "Cocoa Powder", "Spinach", "Chocolate"], Ingredients: "1 frozen banana\n 1⁄2 cup almond milk or other dairy-free mill\n 1 tablespoon almond butter\n 1 tablespoon cocoa powder\n 1 tablespoon maple syrup\n 1 cup spinach", Instructions: "Add the smoothie bowl ingredients to a blender and blend until smooth.\n Pour into a bowl and garnish with chocolate and the banana slices. You can add other fruits, almond, nut - what you prefer as topping!", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10)
//
//var SproutedGrainToast = RecipesModel(Name: "Sprouted-Grain Toast with Peanut Butter & Banana", Image: "SproutedGrainToast", RecipeType: "Breakfast", IngredientsList: ["Banana", "Peanut Butter", "Grain Bread"], Ingredients: "2 slices sprouted grain bread\n 1tablespoon peanut butter\n 1 banana, sliced ", Instructions: "Toast bread. Spread the peanut butter on the toasts and top with banana slices.", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 5)
//
//var PastaPesto = RecipesModel(Name: "Pasta with Genoese pesto", Image: "pastapesto", RecipeType: "Main Courses", IngredientsList: ["Pasta", "Pesto", "Tomatoes"], Ingredients: "", Instructions: "", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10)
//
//var ChickenBreast = RecipesModel(Name: "Grilled Chicken breasts with salad", Image: "pollo", RecipeType: "Second Courses", IngredientsList: ["Chicken breasts", "Salad", "",], Ingredients: "", Instructions: "", Notes: "", Difficulty: "Easy", IsFavourite: false, Time: 10)

//var ArrayRecipes: [RecipesModel] = [AvocadoToast, BananaBread, Pancakes3Ingredient, VeggieFrittata, CBSSmoothie, SproutedGrainToast, PastaPesto, ChickenBreast]

