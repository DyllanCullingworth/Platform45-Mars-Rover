module Input
  def get_input
    hash = {}
    clear
    hash[:plateau] = get_plateau.split(' ').map{ |v| v.to_i }
    clear
    hash[:rover1_pos] = get_rover_position(1).split(' ')
    clear
    hash[:rover1_commands] = get_rover_commands(1)
    clear
    hash[:rover2_pos] = get_rover_position(2).split(' ')
    clear
    hash[:rover2_commands] = get_rover_commands(2)
    
    hash
  end

  def get_plateau
    plateau = prompt(
      "Input the plateau co-ordinates, seperated by a space eg: 3 6"
      )
    verify_plateau(plateau)
  end 

  def verify_plateau(plateau)
    if plateau.match /^[0-9]\s[0-9]$/
      return plateau
    else
      puts "Invalid input"
      get_plateau
    end
  end

  def get_rover_position(rover_num)
    position = prompt(
      "Enter rover #{rover_num}'s starting position seperated by a space eg: 3 5 N
      \nx_pos y_pos Direction
      \nValid directions are N E S W"
      )
    verify_position(position, rover_num)
  end

  def verify_position(position, rover_num)
    if position.match /^[0-9]\s[0-9]\s[NWES]{1}$/
      return position
    else
      puts "Invalid entry, try something like: 3, 5, N"
      get_rover_position(rover_num)
    end
  end

  def get_rover_commands(rover_num)
    rover_commands = prompt(
      "Enter a chain of movement commands with no spaces for rover #{rover_num} eg: LMLMRMMRM
      \nL: Rotate Left
      \nR: Rotate Right
      \nM: Move Forward One Space"
      )
    verify_rover_commands(rover_commands, rover_num)
  end

  def verify_rover_commands(commands, rover_num)
    if commands.match /[LRM]/
      return commands
    else 
      puts "Invalid entry, valid commands are L, R, M"
      get_rover_commands(rover_num)
    end
  end

  def prompt(text)
    print text
    puts "\n\n"

    gets.chomp.upcase
  end
end