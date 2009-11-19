require 'array_iterator'

describe ArrayIterator do
	before(:each) do
		@numbers = %w(one two three)
		@array_iterator = ArrayIterator.new(@numbers)
	end
	
	it "should return true for has_next after construction" do
		@array_iterator.has_next?.should be_true
	end
	
	it "should retrieve all the items" do
		first_item = @array_iterator.next_item
		first_item.should equal(@numbers[0])
		@array_iterator.has_next?.should be_true
		
		second_item = @array_iterator.next_item
		second_item.should equal(@numbers[1])
		@array_iterator.has_next?.should be_true
		
		third_item = @array_iterator.next_item
		third_item.should equal(@numbers[2])
		@array_iterator.has_next?.should be_false
	end
	
	it "should iterate over characters in a string" do
		array = 'abc'
		array_iterator = ArrayIterator.new(array)
		
		result_string = ''
		while array_iterator.has_next?			
			result_string += array_iterator.next_item.chr
		end
		
		result_string.should == 'abc'
	end
end