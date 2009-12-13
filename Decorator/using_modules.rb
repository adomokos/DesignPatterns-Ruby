require 'simple_writer'

module TimeStampingWriter
  def write_line(line)
    super("#{Time.new}: #{line}")
  end
end

module NumberingWriter
  attr_reader :line_number

  def write_line(line)
    @line_number = 1 unless @line_number
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end

writer = SimpleWriter.new('final.txt')
writer.extend(NumberingWriter)
writer.extend(TimeStampingWriter)

writer.write_line('hello')

