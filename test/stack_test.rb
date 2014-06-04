require "test_helper"
require "stack"

describe "stack" do
  it "must be able to add to the top" do
    node = Node.new(4)
    list = List.new
    list.push(node)
    list.top.must_equal node
  end

  it "must remove an element from the stack and return its value" do
    node = Node.new(4)
    list = List.new
    list.push(node)
    list.pop.must_equal node
  end
end
