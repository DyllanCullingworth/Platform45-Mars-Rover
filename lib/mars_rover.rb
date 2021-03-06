require 'terminal-table'
require './lib/display.rb'
require './lib/tracker.rb'

class MarsRover
  include Display

  def initialize(rover_num, rover_position, instructions)
    @directions = ['N','E','S','W']
    @rover_num = rover_num
    @position = rover_position[0..1].map { |v| v.to_i}
    @direction = @directions.index(rover_position[2])
    @instructions = instructions
  end

  def move_rover
    @instructions.chomp.split('').each do |command|
     
      follow_command(command)

      Tracker.set_rover_position(@rover_num, current_position)

      display_map
      sleep(0.5)
    end
    
    current_position
  end

  private

  def current_position
    [@position[0], @position[1], @directions[@direction]]
  end

  def follow_command(command)
    if command == 'L'
      rotate_left
    elsif command == 'R'
      rotate_right
    elsif command == 'M'
      move_forward
    end
  end

  def rotate_left
    if @direction == 0
      @direction = 3
    else
      @direction -= 1  
    end
  end

  def rotate_right
    if @direction == 3
      @direction = 0
    else
      @direction += 1  
    end
  end

  def move_forward
    direction = @directions[@direction]
    case direction
    when 'N'
      @position[1] += 1
    when 'E'
      @position[0] += 1
    when 'S'
      @position[1] -= 1
    else
      @position[0] -= 1
    end
  end
end