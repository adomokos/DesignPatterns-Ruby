require 'computer_builder'

class DesktopBuilder < ComputerBuilder

	def initialize
		@computer = DesktopComputer.new
	end
	
	def display=(display)
		@computer.display = display
	end
	
	def add_cd(writer=false)
		@computer.drives << Drive.new(:cd, 760, writer)
	end

	def add_dvd(writer=false)
		@computer.drives << Drive.new(:dvd, 4000, writer)
	end

	def add_hard_disk(size_in_mb)
		@computer.drives << Drive.new(:hard_disk, size_in_mb, true)
	end
end
