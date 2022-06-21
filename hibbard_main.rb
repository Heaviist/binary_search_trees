# frozen_string_literal: true

require_relative './lib/node'
require_relative './lib/tree'

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
# array = [1, 7, 4, 23, 15, 16, 4, 3, 5, 7, 9, 67, 6345, 324, 24]

tree = Tree.new(array)
p tree.depth(tree.find(1))
# tree.insert 10
# tree.insert 11
# tree.insert 6346
# tree.insert 6347

p tree.balanced?
