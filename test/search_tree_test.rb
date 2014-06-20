require "minitest/autorun"
require "search_tree"

describe "A Binary Search Tree" do
  it "will insert a root node" do
    search_tree = Search_tree.new
    node4 = search_tree.insert(4)
    search_tree.contain(4).must_equal true
  end

  it "will add a node to the head" do
    search_tree = Search_tree.new
    node4 = search_tree.insert(4)
    search_tree.insert(5)
    search_tree.contain(5).must_equal true
    search_tree.size.must_equal 2
  end

  it "will return nil if the tree doesnt contain any values" do
    search_tree = Search_tree.new
    search_tree.size.must_equal 0
  end

  it "will return the proper depth" do
    search_tree = Search_tree.new
    search_tree.insert(4)
    search_tree.insert(5)
    search_tree.contain(5).must_equal true
    search_tree.size.must_equal 2
    search_tree.depth.must_equal 2
  end

  it "will return 0 if the Search Tree is only a root" do
    search_tree = Search_tree.new
    node4 = search_tree.insert(4)
    search_tree.contain(4).must_equal true
    search_tree.balance.must_equal 0
  end

  it "will return 1 if the left is bigger than the right" do
    search_tree = Search_tree.new
    search_tree.insert(5)
    search_tree.insert(4)
    search_tree.contain(4).must_equal true
    search_tree.balance.must_equal 1
  end
end

describe "binary search tree" do
  before do
    @search_tree = Search_tree.new
    @search_tree.insert(25)
    @search_tree.insert(24)
    @search_tree.insert(23)
    @search_tree.insert(22)
    @search_tree.insert(21)
    @search_tree.insert(20)
    @search_tree.insert(30)
  end

  it "must print in preorder" do
    @search_tree.preorder.must_equal [25, 24, 23, 22, 21, 20, 30]
  end

  it "must print in in_order" do
    @search_tree.in_order.must_equal [20, 21, 22, 23, 24, 25, 30]
  end

  it "must print in postorder" do
    @search_tree.postorder.must_equal [20, 21, 22, 23, 24, 30, 25]
  end

  it "must print in breadth_first" do
  @search_tree.breadth_first.must_equal [25, 24, 30, 23, 22, 21, 20]
  end
end
