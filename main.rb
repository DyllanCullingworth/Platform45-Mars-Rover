require './lib/mars_rover.rb'
require './lib/input.rb'

include Input

input = get_input

# input = {
#   plateau: ['5','5'],
#   rover1_pos: ['1', '2', 'N'],
#   rover1_commands: 'LMLMLMLMM',
#   rover2_pos: ['3', '3', 'E'],
#   rover2_commands: 'MMRMMRMRRM'
# }

p input

# mars_rover1 = MarsRover.new(0, 0, 'N', 'LLMM')

# mars_rover1.move_rover
# p mars_rover1.position
