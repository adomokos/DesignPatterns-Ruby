class ArrayIterator
	def initialize(array)
		@array = array
		@index = 0
	end
	
	def has_next?
		@index < @array.length
	end
	
	def item
		@array[@index]
	end
	
	# exernal iterator
	def next_item
		value = @array[@index]
		@index += 1
		value
	end
	
	# internal iterator
	def for_each_element(array)
		i = 0
		while i < array.length
			yield(array[i])
			i += 1			
		end
	end	
end

a = [10, 20, 30]

# array_iterator = ArrayIterator.new(a)
# array_iterator.for_each_element(a) {|element| puts("The element is #{element}.")}

# a.each { |element| puts("The element is #{element}")}

=begin
array = ['red', 'green', 'blue']

i = ArrayIterator.new(array)
while i.has_next?
	puts("item: #{i.next_item}")
end
=end