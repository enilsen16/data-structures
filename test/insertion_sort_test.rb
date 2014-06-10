require "test_helper"
require "insertion_sort"

describe "insertion sort" do
  it "will sort in given array" do
    a = [5,8,4,3,1]
    a.sort_array
    a.must_equal [1,3,4,5,8]
  end
end
