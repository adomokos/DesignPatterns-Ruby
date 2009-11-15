class PlainTextReport < Report
	
	def output_head
		puts("*** #{@title} ***")		
	end
	
	def output_line(line)
		puts line
	end
	
end