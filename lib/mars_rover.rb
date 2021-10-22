class MarsRover
  attr_accessor :position

  def initialize(x_pos, y_pos, dir, instructions)
    @directions = ['N','E','S','W']
    @position = {
      x: x_pos,
      y: y_pos,
      dir: @directions.index(dir)
    }
    @instructions = instructions
  end

  def move_rover
    @instructions.chomp.split('').each do |command|
      if command == 'L'
        rotate_left
      elsif command == 'R'
        rotate_right
      elsif command == 'M'
        move_forward
      end
    end

    final_position
  end

  def final_position
    "#{@position[:x]} #{@position[:y]} #{@directions[@position[:dir]]}"
  end

  def rotate_left
    current_position = @position[:dir]
    if current_position == 0
      @position[:dir] = 3
    else
      @position[:dir] -= 1  
    end
  end

  def rotate_right
    current_position = @position[:dir]
    if current_position == 3
      @position[:dir] = 0
    else
      @position[:dir] += 1  
    end
  end


  def move_forward
    direction = @directions[@position[:dir]]
    case direction
    when 'N'
      @position[:y] += 1
    when 'E'
      @position[:x] += 1
    when 'S'
      @position[:y] -= 1
    else
      @position[:x] -= 1
    end
  end
end