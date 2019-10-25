require_relative 'core_extensions.rb'
require_relative 'cell.rb'

class Board
  attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end


  def get_cell(x, y)
    grid[y][x]
  end

  def set_cell(x, y, value)
    get_cell(x, y).value = value
  end

  def game_over
    return :winner if winner?
    return :draw if draw?
    false
  end

  def draw?
    grid.flatten.map { |cell| cell.value }.none_empty?
  end


  private
  def default_grid
    Array.new(3) {Array.new(3) { Cell.new }} #[ ["","",""], ["","",""], ["","",""]]
  end

  def winnig_positions
    grid + #rows
    grid.transpose + #columns
    diagonals # two diagonals
  end

  def diagonals
    [
      [get_cell(0,0), get_cell(1,1), get_cell(2,2)],
      [get_cell(0,2), get_cell(1,1), get_cell(2,0)]
    ]
  end

  def winner?
    winnig_positions.each do |winnig_position|
      next if winnig_position_values(winnig_position).all_empty?
      return true if winnig_position_values(winnig_position).all_same?
    end
    false
  end

  def winnig_position_values(winnig_position)
    winnig_position.map { |cell| cell.value }
  end

end
