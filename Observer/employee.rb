require 'subject'

class Employee
	include Subject
	
	attr_reader :name
	attr_accessor :title, :salary
	
	def initialize(name, title, salary)
		super()
		@name = name
		@title = title
		@salary = salary
	end
	
	def salary=(new_salary)
		if salary == new_salary
			return
		end
		@salary = new_salary
		notify_observers
	end
end