require 'sorted_array_merger'

describe SortedArrayMerger do
	
	before(:each) do
		@array_merger = SortedArrayMerger.new
	end
	
	it "should merge two arrays with the same items" do
		array_one = [1, 2, 3]
		array_two = [1, 2, 3]		
				
		array_result = @array_merger.merge(array_one, array_two)		
		array_result.should == [1, 1, 2, 2, 3, 3]
	end
	
	it "should merge two arrays when the second has an extra item" do
		array_one = [1, 2, 3]
		array_two = [1, 2, 3, 4]
		
		array_result = @array_merger.merge(array_one, array_two)		
		array_result.should == [1, 1, 2, 2, 3, 3, 4]
	end
	
	it "should merge two arrays with same length but different values" do
		array_one = [1, 3]
		array_two = [1, 2, 4]
		
		array_result = @array_merger.merge(array_one, array_two)		
		array_result.should == [1, 1, 2, 3, 4]
	end
end