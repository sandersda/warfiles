class Food

	attr_accessor :name, :portion_size, :calories

	def initialize(name, portion_size, calories)
		@name = name
		@portion_size = portion_size
		@calories = calories
	end

	def total_calories(portions_eaten)
		portions_eaten * calories
	end


	def to_s
		"#{name} | #{portion_size} | #{calories}"
		
	end
end

