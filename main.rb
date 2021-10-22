require './lib/mars_rover.rb'

mars_rover1 = MarsRover.new(0, 0, 'N', 'LLMM')

mars_rover1.move_rover
p mars_rover1.position
