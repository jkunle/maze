require_relative 'grid'
require_relative 'prims'

grid = Grid.new(20, 20)
SimplifiedPrims.on(grid)

filename = 'prims-simple.png'
grid.to_png.save(filename)
puts "saved to #{filename}"

TruePrims.on(grid)

filename = 'true-prims-simple.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
