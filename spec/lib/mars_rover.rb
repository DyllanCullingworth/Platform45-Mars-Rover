class MarsRover
  def initialize(x_pos, y_pos, dir, instructions)
    @directions = ['N','E','S','W']
    @position = {
      x: x_pos,
      y: y_pos,
      dir: @directions.index_of(dir)
    }
    @instructions
  end

  def move_rover(@instructions)
    instructions.chomp.split().each do |command|
      if command == 'L'
        @position[dir] -= 1
      elsif command == 'R'
        @position[dir] += 1
      elsif command == 'M'
        move_forward
      end
    end
  end

  def move_forward
    direction = @directions[@position[:dir]]
    case direction
    when 'N'
      @position[:y] += 1
    when 'E'
      @position[:x] -= 1
    when 'S'
      @position[:y] += 1
    else
      @position[:x] -= 1
    end
  end
end