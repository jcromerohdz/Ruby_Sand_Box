# frozen_string_literal:true

# This is the Gear class for bicycle
class RevealingReferences
  attr_reader :wheel
  def initialize(data)
    @wheel = wheelify(data)
  end

  def diameters
    wheels.collect do |wheel|
      wheel.rim + (wheel.tire * 2)
    end
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end
end

rf = RevealingReferences.new([[622, 20], [622, 23], [559, 30], [559, 40]])
p rf
