# binary_search_trees
The Odin Project's Binary Search Trees assignment in Ruby

# Assignment
Build a balanced BST

# Goal
According to the following steps:
1. Build a Node class
2. Build a Tree class
3. Write #build_tree
4. Write #insert and #delete
5. Write #find
6. Write a #level_order method which accepts a block. This method should traverse the tree in breadth-first level order and yield each node to the provided block.
7. Write #inorder, #preorder, and #postorder methods that accepts a block. Each method should traverse the tree in their respective depth-first order and yield each node to the provided block. The methods should return an array of values if no block is given.
8. Write a #height method which accepts a node and returns its height. Height is defined as the number of edges in longest path from a given node to a leaf node.
9. Write a #depth method which accepts a node and returns its depth. Depth is defined as the number of edges in path from a given node to the tree’s root node.
10. Write a #balanced? method which checks if the tree is balanced. A balanced tree is one where the difference between heights of left subtree and right subtree of every node is not more than 1.
11. Write a #rebalance method which rebalances an unbalanced tree. Tip: You’ll want to use a traversal method to provide a new array to the #build_tree method.
12. Write a driver script that ties it all together according to the given specifications

# Expectations and challenges
1. I expect this to be somewhat similar to the Linked Lists but at the same time will take some time to wrap my head around again.
2. Most methods seem fairly obvious in functionality. Writing some pseudo code might be quite helpful for the more tricky ones.
3. I'm expecting the methods that work with blocks to be quite challenging, especially the first one.
4. the rebalancing method might be quite a hassle to get all the steps right.
5. Mostly expecting it to be quite fun to see the whole thing work.
6. Will probably work with a main.rb file with some of the methods applied for some easy testing and understanding.

# Results and Evaluation
1. All functionality is there. The only remaining issue is the #initialize / #build_tree methods not returning the root node due to the object not supporting #inspect warning.
2. I should have written a little more pseudo code at the start. Restarting from scratch to wrap my head around everything in a slightly different mindset definitely helped.
3. This turned out to be way more intuitive than I expected it to be. I guess the blocks and procs stuff seems rather vague until you start using it. Using the &arg in recursion was an interesting twist.
4. Rebalancing, again, turned out to be straightforward with all the previous steps done properly.
5. Very much so, after some frustration.
6. I didn't do this before, but makes sense to keep things organized.

# Notes for future revisiting
1. The previously mentioned "object doesn't support #inspect" thing could be something to look at further.
2. Some methods could probably be cleaned up and be made more concise.
