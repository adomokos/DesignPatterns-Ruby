require 'task'
require 'add_dry_ingredients_task'
require 'add_liquid_task'
require 'mix_task'
require 'composite_task'

class MakeBatterTask < CompositeTask
	def initialize
		super('Make Batter')
		@sub_tasks = []
		add_sub_task(AddDryIngredientsTask.new)
		add_sub_task(AddLiquidTask.new)
		add_sub_task(MixTask.new)		
	end
end