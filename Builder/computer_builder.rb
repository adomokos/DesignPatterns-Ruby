require 'computer'
require 'parts'

class ComputerBuilder
	attr_reader :computer

	def initialize
		@computer = Computer.new
	end
	
	def memory_size(size_in_mb)
		@computer.motherboard.memory_size = size_in_mb
	end

	def turbo(has_turbo_cpu=true)
		@computer.motherboard.cpu = TurboCPU.new
	end
end

=begin
builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)

computer = builder.computer
=end

# Try the laptop builder
