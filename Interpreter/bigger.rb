require 'expression'

class Bigger < Expression
	def initialize(size)
		@size = size
	end

	def evaluate(dir)
		results = []
		Find.find(dir) do |p|
			next unless File.file?(p)
			results << p if(File.size(p) > @size)
		end
		results
	end
end

=begin
bigger_expr = Bigger.new(400)
files_larger_than_15k = bigger_expr.evaluate('/Users/adomokos/Programming/Ruby')
puts 'number of files larger than 15k: ' + files_larger_than_15k.length.to_s'
=end
