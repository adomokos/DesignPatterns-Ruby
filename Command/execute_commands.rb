require 'composite_command'
require 'create_file'
require 'copy_file'
require 'delete_file'

cmds = CompositeCommand.new

cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

cmds.execute
cmds.unexecute

# ucomment this if you want to unexecute the commands
# puts cmds.description

