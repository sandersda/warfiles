def mean(list)
	total = 0.0
	amount_of_numbers = 0
	list.each do |number|
		total += number
		amount_of_numbers += 1
	end
	return total / amount_of_numbers
end

puts mean([1,2,3]) #must equal 2
puts mean([5,10,10]) #8.3333

def median(list)
	median = (0.0)
	ordered_list = list.sort
	if list.length % 2 == 0
		closest_to_middle_high = ordered_list[(list.length / 2)]  
		closest_to_middle_low =	ordered_list[(list.length / 2) - 1]
		median = (closest_to_middle_low + closest_to_middle_high) / 2
		if (closest_to_middle_low + closest_to_middle_high) % 2 == 0
			
			return median
		else
			return median + 0.5
		end
	end
	median = ordered_list[(list.length - 1) / 2] 

end



puts median([2,1]) # must equal 1.5
puts median([1,2,3,4]) # must equal 2.5
puts median ([9,2,7]) # must equal 7

def standard_deviation(list)
	list_of_squared_difference = []
	mean_of_data = mean(list)
	i = 0
	list.each do |number|
		list_of_squared_difference[i] = (number - mean_of_data) * (number - mean_of_data)
		i += 1
	end
	return Math.sqrt(mean(list_of_squared_difference))
end

puts standard_deviation([6,2,3,1]) # must equal 1.87
puts standard_deviation([1,2,3,4,1234,1456,123,789,5678,1,1234,5434241,13245]) # must equal 1447535.2838692

def mode(list)
	mode_of_list = []
	checked_number = list[0]
	amount_of_repeats = 0
	highest_number_of_repeats = 0
	i = 1
	list.each do |number|
		if number == checked_number
			amount_of_repeats += 1
		elsif amount_of_repeats > highest_number_of_repeats
			highest_number_of_repeats = amount_of_repeats
			mode_of_list = []
			mode_of_list[0] = checked_number
			i = 1
		elsif amount_of_repeats == highest_number_of_repeats
			mode_of_list[1] = checked_number
			i += 1
		end
		if number != checked_number
			amount_of_repeats = 1
			checked_number = number
		end
	end
	return mode_of_list
end

puts ""
print mode([1,2,2,3,3]) #must equal [2, 3]
puts ''
print mode([1,1,2,3,3,3]) # must equal [3]
