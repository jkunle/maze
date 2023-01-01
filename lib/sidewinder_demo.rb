# frozen_string_literal: true

require_relative 'grid'
require_relative 'sidewinder'

grid = Grid.new(4, 4)
Sidewinder.on(grid)

puts grid
img = grid.to_png
img.save "maze.png"