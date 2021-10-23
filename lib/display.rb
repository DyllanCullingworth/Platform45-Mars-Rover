require 'terminal-table'

module Display

  def display_banner
    
  end

  def display_map(plateau, rover1_position, rover2_position)
    plateau = plateau.map{ |v| v + 1 }

    rows = []

    plateau[0].times do |x|
      rows << Array.new(plateau[1], ' ')
    end

    display_rover(rows, rover1_position)
    display_rover(rows, rover2_position)

    map = Terminal::Table.new rows: rows, style: {all_separators: true}
    

    puts map
  end

  def display_rover(rows, rover_position)
    x_pos = rover_position[0]
    y_pos = rover_position[1]
    direction = rover_position[2]

    rows.reverse[y_pos][x_pos] = rover_icon(direction)
  end

  def rover_icon(direction)
    case direction 
    when 'N'
      '^'
    when 'E'
      '>'
    when 'S'
      '_'
    else
      '<'
    end
  end

end