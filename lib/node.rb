# frozen_string_literal: true

# Initializes a new node for the BST. Includes Comparable mixin.
class Node
  include Comparable

  attr_accessor :data, :left, :right

  def initialize(data)
    @left = nil
    @data = data
    @right = nil
  end

  def <=>(other)
    data <=> other.data
  end
end
