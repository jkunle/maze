require_relative 'growing_tree'
require_relative 'grid'

def save(grid, filename)
  grid.to_png.save(filename)

  puts "saved to #{filename}"
end

grid = Grid.new(8, 8)
GrowingTree.on(grid, &:sample)
save(grid, 'growing-tree-random.png')

grid = Grid.new(20, 20)
GrowingTree.on(grid, &:last)
save(grid, 'growing-tree-last.png')

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| rand(2).zero? ? list.last : list.sample }
save(grid, 'growing-tree-mix.png')
