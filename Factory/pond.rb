require 'duck'
require 'frog'

class Pond
	def initialize(number_animals, number_plants)
		@animals = []
		number_animals.times do |i|
			animal = new_animal("Animal#{i}")	
			@animals << animal
		end

		@plants = []
		number_plants.times do |i|
			plant = new_plant("Plant#{i}")
			@plants << plant
		end
	end

	def simulate_one_day
		@plants.each {|plant| plant.grow}
		@animals.each {|animal| animal.speak}
		@animals.each {|animal| animal.eat}
		@animals.each {|animal| animal.sleep}
	end
end
