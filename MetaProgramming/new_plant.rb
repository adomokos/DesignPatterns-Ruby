def new_plant(stem_type, leaf_type)
	plant = Object.new

	if stem_type == :fleshy
		def plant.stem
			'fleshy'
		end
	else
		def plant.stem
			'woody'
		end
	end

	if leaf_type == :broad
		def plant.leaf
			'broad'
		end
	else
		def plant.leaf
			'needle'
		end
	end

	plant
end

plant1 = new_plant(:fleshy, :broad)
plant2 = new_plant(:woody, :needle)

puts "Plant 1's stem: #{plant1.stem} leaf: #{plant1.leaf}"
puts "Plant 2's stem: #{plant2.stem} leaf: #{plant2.leaf}"
