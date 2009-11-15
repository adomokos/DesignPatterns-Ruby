class AddLiquidTask < Task
	def initialize
		super('Add Liquid Task')
	end
	
	def get_required_time
		2.0		# It takes 2 seconds to add liquid
	end
end