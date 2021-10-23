require './lib/mars_rover.rb'
require './lib/input.rb'
require './lib/display.rb'

include Input
include Display

# input = get_input

input = {
  plateau: [5, 5],
  rover1_pos: ['0', '0', 'N'],
  rover1_commands: 'LMLMLMLMM',
  rover2_pos: ['3', '3', 'E'],
  rover2_commands: 'MMRMMRMRRM'
}

display_map(input[:plateau], input[:rover1_pos], input[:rover2_pos])

# mars_rover1 = MarsRover.new(0, 0, 'N', 'LLMM')

# mars_rover1.move_rover
# p mars_rover1.position
