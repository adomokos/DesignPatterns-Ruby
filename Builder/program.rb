require 'computer_builder'
require 'laptop_builder'

builder = LaptopBuilder.new
builder.add_hard_disk(100000)
builder.turbo

computer1 = builder.computer
builder.reset
computer2 = builder.computer
