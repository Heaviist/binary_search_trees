# frozen_string_literal: true

require_relative './lib/node'
require_relative './lib/tree'

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
tree = Tree.new(array)
tree.inorder { |node| p node.data }
