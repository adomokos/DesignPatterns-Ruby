module Carnivore
	def diet
		'meat'
	end

	def teeth
		'sharp'
	end
end

module Herbivore
	def diet
		'plant'
	end

	def teeth
		'flat'
	end
end

module Nocturnal
	def sleep_time
		'day'
	end

	def awake_time
		'night'
	end
end

module Diurnal
	def sleep_time
		'night'
	end

	def awake_time
		'day'
	end
end

def new_animal(diet, awake)
	animal = Object.new

	if diet == :meat
		animal.extend(Carnivore)
	else
		animal.extend(Herbivore)
	end

	if awake == :day
		animal.extend(Diurnal)
	else
		animal.extend(Nocturnal)
	end
end

animal1 = new_animal(:meat, :day)

puts "animal1 diet: #{animal1.diet} teeth: #{animal1.teeth} sleep_time: #{animal1.sleep_time} wake_time: #{animal1.awake_time}"
