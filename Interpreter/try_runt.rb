require 'rubygems'
require 'runt'

mondays = Runt::DIWeek.new(Runt::Monday)
wednesdays = Runt::DIWeek.new(Runt::Wednesday)
fridays = Runt::DIWeek.new(Runt::Friday)

puts fridays.include?(Date.new(2015, 12, 25))
puts mondays.include?(Date.new(2015, 12, 25))
