require "test_helper"
require "dedupe"

describe "double linked lisst" do
  it "will insert a given node" do
    node = Nodde.new(100)
    lisst = Lisst.new
    lisst.append(node)
    lisst.count.must_equal 1
  end

  it "will add multiple nodes to a lisst" do
    lisst = Lisst.new
    lisst.append(Nodde.new(100))
    lisst.append(Nodde.new(99))
    lisst.append(Nodde.new(98))
    lisst.count.must_equal 3
    lisst.head.value.must_equal 100
  end

  it "will search nodes" do
    lisst = Lisst.new
    lisst.append(Nodde.new(100))
    lisst.append(Nodde.new(99))
    lisst.append(Nodde.new(98))
    searched_node = lisst.search(99)
    searched_nodde = lisst.search(98)
    searched_node.must_equal 99
    searched_nodde.must_equal 98
    lisst.count.must_equal 3
  end

  it "remove a given node" do
    lisst = Lisst.new
    lisst.append(Nodde.new(100))
    lisst.append(Nodde.new(99))
    lisst.append(Nodde.new(98))
    lisst.append(Nodde.new(97))
    searched_node = lisst.search(99)
    searched_nodde = lisst.search(98)
    searched_node.must_equal 99
    lisst.remove(searched_nodde).must_equal nil
    binding.pry
    lisst.count.must_equal 3
  end

  it "will deduplicate a given link list" do
    lisst = Lisst.new
    lisst.append(Nodde.new(100))
    lisst.append(Nodde.new(98))
    lisst.append(Nodde.new(99))
    lisst.append(Nodde.new(98))
    lisst.dedupe
    lisst.dedupe.count.must_equal 3
  end
end
