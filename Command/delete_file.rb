class DeleteFile < Command
	def initialize(path)
		super("Delete file: #{path}")
		@path = path
	end

	def execute
	  if File.exists?(@path)
	    @contents = File.read(@path)
    end
    f = File.delete(@path)
	end

	def unexecute
	  if @contents
	    puts @contents
	    f = File.open(@path, "w")
	    f.write(@contents)
	    f.close
    end
  end
end

