require 'expression'

class Writable < Expression
	def evaluate(dir)
		results = []
		Find.find(dir) do |p|
			next unless File.file?(p)
			results << p if(File.writable?(p))
		end
		results
	end
end

=begin
writable_expr = Writable.new
writable_files = writable_expr.evaluate('/Users/adomokos/Programming/Ruby')
puts "Number of writable files: #{writable_files.length}"
=end

