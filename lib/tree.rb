# frozen_string_literal: true

# Initializes the BST and provides associated methods.
class Tree
  attr_accessor :root

  def initialize(array)
    @root = build_tree(array.uniq.sort)
  end

  def insert(value, node = @root)
    if value < node.data
      return insert(value, node.left) unless node.left.nil?

      node.left = Node.new(value)
    elsif value > node.data
      return insert(value, node.right) unless node.right.nil?

      node.right = Node.new(value)
    end
  end

  private

  def build_tree(array, array_start = 0, array_end = array.size - 1)
    return if array_start > array_end

    array_mid = (array_start + array_end) / 2
    node = Node.new(array[array_mid])
    node.left = build_tree(array, array_start, array_mid - 1)
    node.right = build_tree(array, array_mid + 1, array_end)

    @root = node
  end
end
