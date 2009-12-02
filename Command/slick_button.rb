class SlickButton
	attr_accessor :command
	
	def initialize(&block)
		@command = block
	end
	
	def on_button_push
		@command.call if @command
	end
end

new_button = SlickButton.new do
	puts 'The button was pushed'
end

new_button.on_button_push