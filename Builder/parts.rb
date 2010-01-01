class CPU
	# common CPU stuff
end

class BasicCPU < CPU
	# Lots of not very fast CPU-related stuff...
end

class TurboCPU < CPU
	# Lost of very fast CPU stuff
end

class Motherboard
	attr_accessor :cpu
	attr_accessor :memory_size

	def initialize(cpu=BasicCPU.new, memory_size=1000)
		@cpu = cpu
		@memory_size = memory_size
	end
end

class Drive
	attr_reader :type # either :hard_disk, :cd or :dvd
	attr_reader :size # in MB
	attr_reader :writable # true if this drive is writable

	def initialize(type, size, writeable)
		@type = type
		@size = size
		@writable = writeable
	end
end

class LaptopDrive < Drive
end
