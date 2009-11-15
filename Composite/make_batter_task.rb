require 'task'
require 'add_dry_ingredients_task'
require 'add_liquid_task'
require 'mix_task'
require 'composite_task'

class MakeBatterTask < CompositeTask
	def initialize
		super('Make Batter')
		@sub_tasks = []
		self.<<(AddDryIngredientsTask.new)
		self.<<(AddLiquidTask.new)
		self.<<(MixTask.new)
	end
end

