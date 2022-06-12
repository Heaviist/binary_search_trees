# frozen_string_literal: true

# Initializes the BST and provides associated methods.
class Tree
  attr_accessor :root

  def initialize(array)
    @array = array.uniq.sort
    @root = nil
  end

  def build_tree(array = @array, index_start = 0, index_end = (array.size - 1))
    return if index_start > index_end

    mid = (index_start + index_end) / 2
    root = Node.new(array[mid])
    root.left = build_tree(array, index_start, mid - 1)
    root.right = build_tree(array, mid + 1, index_end)

    @root = root
  end
end
