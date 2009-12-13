require 'enhanced_writer'
require 'numbering_writer'
require 'simple_writer'
require 'checksumming_writer'
require 'timestamping_writer'

=begin
# The ugly solution
writer = EnhancedWriter.new('out.txt')
writer.write_line("A plain line")

# try timestamping
writer.timestamping_write_line('with time stamp')
writer.numbering_write_line('with line number')
=end

#writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
#writer.write_line('Hello out there')

=begin
# Compbine multiple decorators
writer = CheckSummingWriter.new(TimeStampingWriter.new(
            NumberingWriter.new(SimpleWriter.new('final.txt'))))
writer.write_line('Hello out there!')
=end

w = SimpleWriter.new('final.txt')

class << w
  alias old_write_line write_line

  def write_line(line)
    old_write_line("#{Time.new}: #{line}")
  end
end

w.write_line('write me out')

