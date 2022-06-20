# frozen_string_literal: true

# Initializes the BST and provides associated methods.
class Tree
  attr_accessor :root

  def initialize(array)
    @root = build_tree(array.uniq.sort)
  end

  def insert(value, node = root)
    if value < node.data
      return insert(value, node.left) unless node.left.nil?

      node.left = Node.new(value)
    elsif value > node.data
      return insert(value, node.right) unless node.right.nil?

      node.right = Node.new(value)
    end
  end

  def delete(value, node = root)
    if value < node.data
      node.left = delete(value, node.left)
    elsif value > node.data
      node.right = delete(value, node.right)
    else
      return replacement_node(node)
    end
    node
  end

  def find(value, node = root)
    return nil if node.nil?

    if value < node.data
      find(value, node.left)
    elsif value > node.data
      find(value, node.right)
    elsif value == node.data
      node
    end
  end

  def level_order_iterative(queue = [root], output = [])
    until queue.empty?
      current_node = queue.shift
      queue << current_node.left unless current_node.left.nil?
      queue << current_node.right unless current_node.right.nil?
      output << current_node.data
      yield current_node if block_given?
    end
    output
  end

  def level_order_recursive(queue = [root], output = [], &block)
    return output if queue.empty?

    current_node = queue.shift
    output << current_node.data
    yield current_node if block_given?
    queue.push(current_node.left).push(current_node.right).compact!
    level_order_recursive(queue, output, &block)
  end

  def preorder(current_node = root, output = [], &block)
    return if current_node.nil?

    output << current_node.data
    yield current_node if block_given?
    preorder(current_node.left, output, &block)
    preorder(current_node.right, output, &block)
    output
  end

  def inorder(current_node = root, output = [], &block)
    return if current_node.nil?

    inorder(current_node.left, output, &block)
    output << current_node.data
    yield current_node if block_given?
    inorder(current_node.right, output, &block)
    output
  end

  def postorder(current_node = root, output = [], &block)
    return if current_node.nil?

    postorder(current_node.left, output, &block)
    postorder(current_node.right, output, &block)
    output << current_node.data
    yield current_node if block_given?
    output
  end

  # Returns height of node. Returns -1 if the node or value does not exist
  def height(node = root)
    # node = find(node) unless node.instance_of? Node
    return -1 if node.nil?

    left_height = height(node.left)
    right_height = height(node.right)
    [left_height, right_height].max + 1
  end

  private

  def replacement_node(node)
    return node.right if node.left.nil?
    return node.left if node.right.nil?

    node.data = min_bigger_value(node.right)
    node.right = delete(node.data, node.right)
    node
  end

  def min_bigger_value(node)
    return node.data if node.left.nil?

    min_bigger_value(node.left)
  end

  def build_tree(array, array_start = 0, array_end = array.size - 1)
    return if array_start > array_end

    array_mid = (array_start + array_end) / 2
    node = Node.new(array[array_mid])
    node.left = build_tree(array, array_start, array_mid - 1)
    node.right = build_tree(array, array_mid + 1, array_end)

    node
  end
end
