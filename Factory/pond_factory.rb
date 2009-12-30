require 'pond'
require 'algea'

class DuckPond < Pond
	def new_animal(name)
		Duck.new(name)
	end
end

class FrogPond < Pond
	def new_animal(name)
		Frog.new(name)
	end
end

class DuckWaterLilyPond < Pond
	def new_animal(name)
		Duck.new(name)
	end

	def new_plant(name)
		Waterlily.new(name)
	end
end

class FrogAlgeaPond < Pond
	def new_animal(name)
		Frog.new(name)
	end

	def new_plant(name)
		Algea.new(name)
	end
end

=begin
pond = FrogPond.new(3)
pond.simulate_one_day

pond = DuckPond.new(3)
pond.simulate_one_day
=end

pond = FrogAlgeaPond.new(3, 2)
pond.simulate_one_day
