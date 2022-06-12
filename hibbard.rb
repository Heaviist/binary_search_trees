# frozen_string_literal: true

require_relative './lib/node'
require_relative './lib/tree'

node1 = Node.new(10)
node2 = Node.new(20)
node3 = Node.new(30)

p node1 < node2
p node2.between?(node1, node3)

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
tree = Tree.new(array)
tree.build_tree
p tree.root
