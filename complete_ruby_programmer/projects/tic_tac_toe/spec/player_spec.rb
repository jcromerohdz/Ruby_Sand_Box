
require_relative '../lib/player.rb'

RSpec.describe 'Player' do
  describe '#initialize' do
    it "rises an exception when initialized with {}" do
      expect { Player.new({}) }.to raise_error
    end

    it "does not raise an error when initialized with a valid input hash" do
      input = {name: "John Smith"}
      expect { Player.new(input)}.to_not raise_error
    end

    describe "#name" do
      it "returns the player's name" do
        input = {name: "John Smith"}
        player = Player.new(input)
        expect(player.name).to eq "John Smith"
      end
    end
  end

end
