require 'expression'

class Not < Expression
	def initialize(expression)
		@expression = expression
	end

	def evaluate(dir)
		All.new.evaluate(dir) - @expression.evaluate(dir)
	end
end
