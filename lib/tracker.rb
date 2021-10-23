class Tracker
  @@plateau = []
  @@rover1_position = []
  @@rover2_position = []

  class << self
    def set_plateau(plateau)
      @@plateau = plateau.map{ |v| v + 1 }
    end

    def set_rover_position(rover_number, position)
      if rover_number == 1
        @@rover1_position = position
      elsif rover_number == 2
        @@rover2_position = position
      end
    end

    def plateau
      @@plateau
    end

    def rover1_position
      @@rover1_position
    end

    def rover2_position
      @@rover2_position
    end
  end
end