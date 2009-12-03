require 'rubygems'
require 'madeleine'
require 'employee_manager'
require 'employee'
require 'add_employee'
require 'find_employee'
require 'change_address'

store = SnapshotMadeleine.new('employees') {EmployeeManager.new}

Thread.new do
  while true
    sleep(20)
    madeleine.take_snapshot
  end
end

tom = Employee.new('tom', '1001', '1 Division Street')
harry = Employee.new('harry', '1002', '3435 Sunnyside Ave')


store.execute_command(AddEmployee.new(tom))
store.execute_command(AddEmployee.new(harry))

# with Tom and Harry safely in the Madeleine store, we can run some queries
puts(store.execute_command(FindEmployee.new('1001')))
puts(store.execute_command(FindEmployee.new('1002')))

# we can even change Tom's address
store.execute_command(ChangeAddress.new('1001', '555 Main Stree'))

