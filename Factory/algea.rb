class Algea
	def initialize(name)
		@name = name
	end

	def grow
		puts("The Algea #{@name} soaks up the sun and grows")
	end
end

class WaterLily
	def initialize(name)
		@name = name
	end

	def grow
		puts("The water lily #{@name} floats, soaks up the sun and grows")
	end
end
