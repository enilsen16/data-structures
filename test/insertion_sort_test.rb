require "test_helper"
require "insertion_sort"

describe "insertion sort" do
  it "will sort in given array" do
    a = [5,8,4,3,1]
    a.sort_array
    a.must_equal [1,3,4,5,8]
  end

  it "will sort a reverse array" do
    a = [5, 4, 3, 2, 1]
    a.sort_array
    a.must_equal [1,2,3,4,5]
  end

  it "will sort the best case" do
    a = [1,2,3,4,5]
    a.sort_array
    a.must_equal [1,2,3,4,5]
  end
end
