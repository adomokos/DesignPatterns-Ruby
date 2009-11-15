class Task
	attr_reader :name
	
	def initialize(name)
		@name = name
	end
	
	def get_time_required
		0.0
	end
end