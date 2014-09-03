require "binary_tree"
require "minitest/autorun"

describe "a binary tree" do
  before do
    andrea = Tree.new("andrea")
    peter = Tree.new("peter")
    katie = Tree.new("katie", peter, andrea)
    dan = Tree.new("dan")
    jony = Tree.new("jony", dan, katie)
    eddie = Tree.new("eddie")
    craig = Tree.new("craig")
    phil = Tree.new("phil", craig, eddie)
    @tree = Tree.new("tim", jony, phil)
  end
  it "must print in a pre-order" do
    @tree.preorder.must_equal ["tim", "jony", "dan", "katie", "peter", "andrea", "phil", "craig", "eddie"]
  end

  it "must print in order" do
    @tree.in_order.must_equal ["dan", "jony", "peter", "katie", "andrea", "tim", "craig", "phil", "eddie"]
  end

  it "must print in post-order" do
    @tree.postorder.must_equal ["dan", "peter", "andrea", "katie", "jony", "craig", "eddie", "phil", "tim"]
  end
end
