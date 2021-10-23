require 'mars_rover'

# spec/string_calculator_spec.rb
describe MarsRover do

  describe "move_rover" do
    context "starting at 1 2 N, moving LMLMLMLMM" do
      it "should end at 1 3 N" do
        Tracker.set_plateau([5,5])
        Tracker.set_rover_position(1, [1,2,'N'])
        Tracker.set_rover_position(2, [5,1,'E'])
        expect(MarsRover.new(1, [1, 2, 'N'], 'LMLMLMLMM').move_rover).to eq([1,3,'N'])
      end
    end

    context "starting at 3 3 E, moving MMRMMRMRRM" do
      it "should end at 5 1 E" do
        Tracker.set_plateau([5,5])
        Tracker.set_rover_position(1, [1,3,'N'])
        Tracker.set_rover_position(2, [3,3,'E'])
        expect(MarsRover.new(2, [3, 3, 'E'], 'MMRMMRMRRM').move_rover).to eq([5,1,'E'])
      end
    end
  end
end