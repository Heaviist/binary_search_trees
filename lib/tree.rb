# frozen_string_literal: true

# Initializes the BST and provides associated methods.
class Tree
  attr_accessor :root

  def initialize(array)
    @base_array = array.uniq.sort
    @root = Node.new(nil)
  end

  def build_tree(array = @base_array, index_start = 0, index_end = (array.size - 1))
    return if index_start > index_end

    mid = (index_start + index_end) / 2
    root = Node.new(array[mid])
    root.left = build_tree(array, index_start, mid - 1)
    root.right = build_tree(array, mid + 1, index_end)

    @root = root
  end

  # Insert a value without balancing the tree. Does not check for empty tree, since tree is initialized with an array.
  def insert(value, node = @root)
    if value < node.data
      return node.left = Node.new(value) if node.left.nil?

      insert(value, node.left)
    elsif value > node.data
      return node.right = Node.new(value) if node.right.nil?

      insert(value, node.right)
    end
  end

  def delete(value, node = @root)
    if value < node.data
      return node.left = nil if node.left.data == value && node.left.left.nil? && node.left.right.nil?

      delete(value, node.left)
    else
      return node.right = nil if node.right.data == value && node.right.left.nil? && node.right.right.nil?

      delete(value, node.right)
    end
  end
end
