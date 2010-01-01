require 'computer_builder'

class LaptopBuilder < ComputerBuilder
	def initialize
		@computer = LaptopComputer.new
	end

	def reset
		@computer = LaptopComputer.new
	end

	def display=(display)
		raise "Laptop display must be lcd" unless display == :lcd
	end

	def add_cd(writer=false)
		@computer.drives << LaptopDrive.new(:cd, 760, writer)
	end

	def add_dvd(writer=false)
		@computer.drives << LaptopDrive.new(:dvd, 4000, writer)
	end

	def add_hard_disk(size_in_mb)
		@computer.drives << LaptopDrive.new(:hard_disk, size_in_mb, true)
	end
end
