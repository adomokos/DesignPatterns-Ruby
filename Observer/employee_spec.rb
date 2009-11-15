require 'employee'

describe Employee do	
	
	before(:each) do
		@employee = Employee.new('Fred', 'Crane Operator', 30000)		
	end
	
	context "notifies observer" do	
		
		it "should notify its observer about a salary change" do
			observer_mock = mock(:observer_mock)
			observer_mock.should_receive(:update).with(@employee)	
			
			@employee.add_observer(observer_mock)			
			@employee.salary = 35000
		end
		
		it "should notify two observers about a salary change" do
			observers = []
			
			observers << mock()
			observers[0].should_receive(:update).with(@employee)
			
			observers << mock()
			observers[1].should_receive(:update).with(@employee)
			
			observers.each do |observer|			
				@employee.add_observer(observer)
			end
			
			@employee.salary = 36000
		end
		
		it "should not notify if the new salary is the same as the old" do
			observer_mock = mock(:observer_mock)			
			
			@employee.add_observer(observer_mock)			
			@employee.salary = 30000
		end
	end
end