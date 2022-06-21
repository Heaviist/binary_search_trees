# frozen_string_literal: true

require_relative './lib/node'
require_relative './lib/tree'

bst_array = Array.new(15) { rand(1..100) }
puts "The BST will be created from this array: #{bst_array}"
bst = Tree.new(bst_array)
bst.pretty_print
puts "BST is balanced?: #{bst.balanced?}"

order = []
bst.level_order_recursive { |node| order << node.data }
puts "Level order elements: #{order}"

order = []
bst.preorder { |node| order << node.data }
puts "Pre order elements: #{order}"

order = []
bst.postorder { |node| order << node.data }
puts "Post order elements: #{order}"

order = []
bst.inorder { |node| order << node.data }
puts "In order elements: #{order}"

unbalance_array = Array.new(10) { rand(100..200) }
puts "The values from this array will be inserted into the BST: #{unbalance_array}"
unbalance_array.each { |value| bst.insert value }
bst.pretty_print
puts "BST is balanced?: #{bst.balanced?}"

puts 'The BST will now be rebalanced'
bst.rebalance
bst.pretty_print
puts "BST is balanced?: #{bst.balanced?}"

order = []
bst.level_order_recursive { |node| order << node.data }
puts "Level order elements: #{order}"

order = []
bst.preorder { |node| order << node.data }
puts "Pre order elements: #{order}"

order = []
bst.postorder { |node| order << node.data }
puts "Post order elements: #{order}"

order = []
bst.inorder { |node| order << node.data }
puts "In order elements: #{order}"

## Simple driver script used for initial testing. Left for future reference.
# # array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
# array = [1, 7, 4, 23, 15, 16, 4, 3, 5, 7, 9, 67, 6345, 324, 24]

# tree = Tree.new(array)
# tree.insert 10
# tree.insert 11
# tree.insert 6346
# tree.insert 6347
# tree.pretty_print
# p tree.balanced?
# tree.rebalance
# tree.pretty_print
