require 'expression'

class FileName < Expression
	def initialize(pattern)
		@pattern = pattern
	end

	def evaluate(dir)
		results = []
		Find.find(dir) do |p|
			next unless File.file?(p)
			name = File.basename(p)
			results << p if File.fnmatch(@pattern, name)
		end
		results
	end
end

=begin
expr_all = All.new
files = expr_all.evaluate('/Users/adomokos/Programming/Ruby')

puts files.length

# But if we are just interested in ruby files
expr_ruby_files = FileName.new('*.rb')
ruby_files = expr_ruby_files.evaluate('/Users/adomokos/Programming/Ruby')

puts ruby_files.length
=end
