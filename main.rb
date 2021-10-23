require './lib/input.rb'
require './lib/mars_rover.rb'
require './lib/tracker.rb'

include Input
# input = get_input

input = {
  plateau: [5, 5],
  rover1_pos: ['0', '0', 'N'],
  rover1_commands: 'LMLMLMLMM',
  rover2_pos: ['3', '3', 'E'],
  rover2_commands: 'MMRMMRMRRM'
}

Tracker.set_plateau(input[:plateau])
Tracker.set_rover_position(1, input[:rover1_pos])
Tracker.set_rover_position(2, input[:rover2_pos])

mars_rover1 = MarsRover.new(1, input[:rover1_pos], input[:rover1_commands])
mars_rover2 = MarsRover.new(2, input[:rover2_pos], input[:rover2_commands])

mars_rover1.move_rover
mars_rover2.move_rover

p Tracker.rover1_position
p Tracker.rover2_position