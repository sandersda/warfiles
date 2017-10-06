def mean(list)
	total = 0.0
	amount_of_numbers = 0
	list.each do |number|
		total += number
		amount_of_numbers += 1
	end
	return total / amount_of_numbers
end



def ordering(list)
	return list.sort
end



def median(list)
	median = (0.0)
	ordered_list = ordering(list)
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


def mode(list)
	ordered_list = ordering(list)
	mode_of_list = []
	checked_number = ordered_list[0]
	amount_of_repeats = 0
	highest_number_of_repeats = 0
	i = 1
	t = 0
	ordered_list.each do |number|
		if number == checked_number
			amount_of_repeats += 1
		elsif amount_of_repeats > highest_number_of_repeats
			highest_number_of_repeats = amount_of_repeats
			mode_of_list = []
			mode_of_list[0] = checked_number
			i = 1
		elsif amount_of_repeats == highest_number_of_repeats
			mode_of_list[i] = checked_number
			i += 1
		end
		t += 1
		if amount_of_repeats > highest_number_of_repeats and t >= (ordered_list.length - 1)
			mode_of_list = []
			mode_of_list[0] = checked_number
		end
		if amount_of_repeats == highest_number_of_repeats and t >= (ordered_list.length - 1)
			mode_of_list[i] = checked_number
		end
		if number != checked_number
			amount_of_repeats = 1
			checked_number = number
		end
	end
	return mode_of_list
end

def longest_run(list)
	last_number = list[0]
	longest_run = 0
	current_run = 1
	i = 0
	list.each do |number|
		if i == 0
			i = 0
		elsif number > last_number
			current_run += 1
		elsif number <= last_number and current_run > longest_run
			longest_run = current_run
			current_run = 1
		else
			current_run = 1
		end
		last_number = number
		i += 1
		if current_run > longest_run and i >= (list.length - 1)
			longest_run = current_run
		end
	end
	return longest_run
end

# puts mean([1,2,3]) #must equal 2
# puts mean([5,10,10]) #must equal 8.3333

# puts median([2,1]) # must equal 1.5
# puts median([1,2,3,4]) # must equal 2.5
# puts median ([9,2,7]) # must equal 7

# puts standard_deviation([6,2,3,1]) # must equal 1.87
# puts standard_deviation([1,2,3,4,1234,1456,123,789,5678,1,1234,5434241,13245]) # must equal 1447535.2838692

# puts ""
# print mode([1,2,2,2,3,3,3]) #must equal [2, 3]
# puts ''
# print mode([1,1,2,3,3,3]) # must equal [3]
# puts ''
# print mode([1,7,6,5,6,6,7,7,1,2,3,5]) # must equal [6, 7]
# puts ''

# puts longest_run([1,4,2,5,3,4,7,8,4,5,6,8,9,-1,3]) #must equal 5

# puts longest_run([1,2,3,4,5,1,2,3,4,5,6,1,2,3,4,5,6,7]) # must equal 7

# puts longest_run([1,2,3,4])

# puts longest_run([-1,-2,3,4,5,6]) # must equal 5