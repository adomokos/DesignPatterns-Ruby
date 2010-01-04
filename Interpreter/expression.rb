require 'find'

class Expression
	# Common expression code will go here soon
end

class All < Expression
	def evaluate(dir)
		results = []
		Find.find(dir) do |p|
			next unless File.file?(p)
			results << p
		end
		results
	end
end
