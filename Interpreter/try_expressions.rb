require 'not'
require 'writable'
require 'bigger'
require 'file_name'
require 'or'
require 'and'

test_dir = '/Users/adomokos/Programming/Ruby'

expr_not_writable = Not.new(Writable.new)
readonly_files = expr_not_writable.evaluate(test_dir)

puts "Number of read-only files: #{readonly_files.length}"
# readonly_files.each { |file| puts file }

small_expr = Not.new(Bigger.new(1024))
small_files = small_expr.evaluate(test_dir)

puts "Number of files less than 1Kb: #{small_files.length}"

not_ruby_expr = Not.new(FileName.new('*.rb'))
not_ruby_files = not_ruby_expr.evaluate(test_dir)
puts "Number of non-ruby files: #{not_ruby_files.length}"

big_or_ruby_expr = Or.new(Bigger.new(1024), FileName.new('*.rb'))
big_or_ruby_files = big_or_ruby_expr.evaluate(test_dir)
puts "Number or large ruby files: #{big_or_ruby_files.length}"

complex_expression = And.new(
	And.new(Bigger.new(1024), FileName.new('*.rb')), Not.new(Writable.new))
files_result = complex_expression.evaluate(test_dir)
puts "Number of files from the complex expression result: #{files_result.length}"

# files_result = complex_expression.evaluate('/Bin')
# puts files_result.length

class Expression
	def |(other)
		Or.new(self, other)
	end

	def &(other)
		And.new(self, other)
	end
end

complex_expression = (Bigger.new(2000) & Not.new(Writable.new)) | FileName.new("*.mp3")
files_result = complex_expression.evaluate(test_dir)
puts "Number of files from the complex expression: #{files_result.length}"
