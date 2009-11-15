require 'employee'
require 'payroll'
require 'tax_man'

=begin
fred = Employee.new('Fred', 'Crane Operator', 30000)

payroll = Payroll.new
fred.add_observer(payroll)

tax_man = TaxMan.new
fred.add_observer(tax_man)

fred.salary = 35000
=end

# Use code block as observer instead of a real class
fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer do |changed_employee|
	puts("Cut a new check for #{changed_employee}!")
	puts("His salary is now #{changed_employee.salary}!")
end

fred.salary = 35000