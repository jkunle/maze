# frozen_string_literal: true

class BinaryTree
  def self.on(grid)
    grid.each_cell do |cell|
      neighbours = []
      neighbours << cell.north if cell.north
      neighbours << cell.east if cell.east

      index = rand(neighbours.length)
      neighbor = neighbours[index]

      cell.link(neighbor) if neighbor
    end

    grid
  end
end
