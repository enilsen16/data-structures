require "minitest/autorun"
require "search_tree"

describe "A Binary Search Tree" do
  it "will insert a root node" do
    search_tree = Search_tree.new
    node4 = search_tree.insert(4)
    search_tree.root.contain(4).must_equal true
  end

  it "will add a node to the head" do
    search_tree = Search_tree.new
    node4 = search_tree.insert(4)
    search_tree.insert(5)
    node4.contain(5).must_equal true
    search_tree.size.must_equal 2
  end

  it "will return nil if the tree doesnt contain any values" do
    search_tree = Search_tree.new
    search_tree.size.must_equal nil
  end
end
