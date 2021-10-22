module Input
  def get_input
    plateau = get_plateau

    rover1_pos = get_rover_position(1)
    rover1_commands = get_rover_commands(1)

    rover2_pos = get_rover_position(2)
    rover2_commands = get_rover_commands(2)
  end

  def get_rover_commands(rover_num)
    rover_commands = prompt("Enter a chain of movement commands eg: LMLMRMMRM")
    verify_commands(rover_commands, rover_num)
  end

  def get_rover_position(rover_num)
    position = prompt("Enter rover #{rover_num}'s starting position eg: 3, 5, N")
    verify_position(position, rover_num)
  end


  def get_plateau
    plateau = prompt("Input the plateau co-ordinates, seperated by a comma or a space: eg: 3, 6 or 3 6")
    verify_plateau(plateau)
  end

  def verify_rover_commands(commands, rover_num)
    if commands.match /^[LRM]$/
      return commands
    else 
      puts "Invalid entry, valid commands are L, R, M"
      get_rover_commands(rover_num)
    end
  end

  def verify_position(position, rover_num)
    if position.match /^[0-9],[0-9],[NWES]{1}$/
      return position
    else
      get_rover_position(rover_num)
    end
  end

  def verify_plateau(plateau)
    if plateau.match /^[0-9],[0-9]$/
      return plateau
    else
      puts "Invalid input"
      get_plateau
    end
  end

  def prompt(text)
    puts text
    input = gets.chomp.upcase.gsub!(' ', '')
  end
end