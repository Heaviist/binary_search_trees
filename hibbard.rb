# frozen_string_literal: true

require_relative './lib/node'
require_relative './lib/tree'

node1 = Node.new(10)
node2 = Node.new(20)
node3 = Node.new(30)

p node1 < node2
p node2.between?(node1, node3)
