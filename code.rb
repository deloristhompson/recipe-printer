#YOUR CODE GOES HERE
class Ingredient
  def initialize(quantity = 0, unit, name)
    @quantity = quantity.to_f
    @unit = unit
    @name = name
  end

  def summary1
    "#{@quantity} #{@unit} #{@name}"
  end
end
       ingredients = [
         Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
         Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
         Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
         Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
       ]
       instructions = [
         "Preheat oven to 400 degrees F.",
         "Cut off the brown ends of the Brussels sprouts.",
         "Pull off any yellow outer leaves.",
         "Mix them in a bowl with the olive oil, salt and pepper.",
         "Pour them on a sheet pan and roast for 35 to 40 minutes.",
         "They should be until crisp on the outside and tender on the inside.",
         "Shake the pan from time to time to brown the sprouts evenly.",
         "Sprinkle with more kosher salt ( I like these salty like French fries).",
         "Serve and enjoy!"
       ]

       ingredients2 = [
      Ingredient.new(1.0, "cup", "quinoa"),
      Ingredient.new(1.0, "cup", "chocolate")
    ]
instructions2 = [
      "Melt chocolate.",
      "Pour over quinoa.",
      "Regret your life."
    ]

    ingredients3 = [
Ingredient.new(1.0, "cup", "potato"),
Ingredient.new(1.0, "cup", "onion"),
Ingredient.new(1.0, "cup", "celery"),
Ingredient.new(1.0, "cup", "carrot"),
Ingredient.new(0.33, "cup", "melted margarine"),
Ingredient.new(0.50, "cup", "all-purpose flour"),
Ingredient.new(2.0, "cups", "chicken broth"),
Ingredient.new(1.0, "cup", "half-and-half"),
Ingredient.new(1.0, "teaspoon", "salt"),
Ingredient.new(0.25, "teaspoon", "pepper"),
Ingredient.new(4.0, "cups", "chicken, cooked and chopped"),
Ingredient.new(2.0, "round", "pie crusts")
]
instructions3 = [
"Preheat oven to 400°F.",
"Saute onion, celery, carrots and potatoes in margarine for 10 minutes.",
"Add flour to sauteed mixture, stirring well, cook one minute stirring constantly.",
"Combine broth and half and half.",
"Gradually stir into vegetable mixture.",
"Cook over medium heat stirring constantly until thickened and bubbly.",
"Stir in salt and pepper; add chicken and stir well.",
"Pour into shallow 2 quart casserole dish and top with pie shells.",
"Cut slits to allow steam to escape.",
"Bake for 40-50 minutes or until pastry is golden brown and filling is bubbly and cooked through."
]


   class Recipe
     def initialize(name, ingredients, instructions)
       @name = name
       @ingredients = ingredients
       @instructions = instructions
     end

     def summary2
       puts "\nName: #{@name}\n"
       print "\nIngredients\n"
       @ingredients.each do |food|
         puts "- #{food.summary1}"
       end

       print "\nInstructions\n"
       @instructions.each_with_index do |value, index|
         puts "#{index += 1}. #{value}"
       end
     end
   end
  recipe1 = Recipe.new("Roasted Brussels Sprouts", ingredients, instructions)
recipe2 = Recipe.new("Gluten Free Chocolate Cake", ingredients2, instructions2)
recipe1.summary2
recipe2.summary2
recipe3 = Recipe.new("Delicious Chicken Pot Pie", ingredients3, instructions3)

recipe3.summary2
