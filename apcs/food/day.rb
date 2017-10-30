require "./food"
class Day

	attr_accessor :meals, :calorie_goal


	def initialize(calorie_goal)
		@meals = []
		@calorie_goal = calorie_goal
	end

	def add_meal(meal)
		meals.push(meal)
	end

	def daily_calories()
		daily_calories = 0
		meals.each do |meal|
			daily_calories = meal.calories
		end
		daily_calories
	end

	def goal_check()
		if daily_calories() > calorie_goal
			return false
		end
		return true	
	end

end