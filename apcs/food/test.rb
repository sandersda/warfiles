require './food'
require './meal'
require './day'

scrambled_eggs = Food.new("scrambled eggs", '1 egg', 100)
bacon = Food.new("Bacon", "3 slices", 100)
cereal = Food.new("Cereal", "1 oz", 135)
puts scrambled_eggs


monday = Day.new(2000)
breakfast = Meal.new("Breakfast");
    breakfast.add_food(Food.new("Scrambled Eggs", "1 egg", 100),3)
    breakfast.add_food(Food.new("Bacon", "3 slices", 100), 2)
    breakfast.add_food(Food.new("Cereal", "1 oz", 135), 2)
    breakfast.add_food(Food.new("Milk", "1 cup", 125), 1)
    breakfast.add_food(Food.new("Orange Juice", "1 cup", 110), 1)

lunch = Meal.new("Lunch")
    lunch.add_food(Food.new("Roast Beef Sandwhich", "1 sandwhich", 345), 1)
    lunch.add_food(Food.new("Salad", "1 cup", 11), 2)
    lunch.add_food(Food.new("Salad Dressing", "1 tbsp", 145), 3)
    lunch.add_food(Food.new("Chicken Noodle Soup", "1 cup", 75), 1.5)
    lunch.add_food(Food.new("Sweet Tea", "8 oz", 100), 2)

dinner = Meal.new("Dinner")
    dinner.add_food(Food.new("Broccoli", "1 cup", 40), 1)
    dinner.add_food(Food.new("Steak", "5 oz", 240), 1.6)
    dinner.add_food(Food.new("Mashed Potatoes", "1 cup", 255), 1.5)
    dinner.add_food(Food.new("Gravy", "1 cup", 125), 0.25)
    dinner.add_food(Food.new("Rice", "1 cup", 230), 1)
    dinner.add_food(Food.new("Ice Cream", "1 cup", 270), 1)
    dinner.add_food(Food.new("Soda", "12 oz", 180), 1)

snacks = Meal.new("Snacks")
    snacks.add_food(Food.new("Chips", "10 chips", 100), 3)
    snacks.add_food(Food.new("Fruit Snacks", "1 bag", 89), 1)
    snacks.add_food(Food.new("Trail Mix", "1 cups", 693), 0.2)

monday.add_meal(breakfast)
monday.add_meal(lunch)
monday.add_meal(dinner)
monday.add_meal(snacks)

puts monday

puts breakfast

puts monday.daily_calories
puts monday.goal_check



#i = 0

#while i == 0
#	puts "Lots of coding and no play makes David a dull boy."
#end