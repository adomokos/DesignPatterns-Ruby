require 'make_batter_task'

main_task = MakeBatterTask.new
puts "The main task will take #{main_task.get_time_required} minutes"