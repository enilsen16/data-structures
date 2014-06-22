require "minitest/autorun"
require "quick_sort"

describe "quick sort" do
  it "will sort a given array" do
    a = [5, 8, 4, 3, 1]
    a.quicksort.must_equal [1, 3, 4, 5, 8]
  end

  it "will sort a reverse array" do
    a = [5, 4, 3, 2, 1]
    a.quicksort.must_equal [1, 2, 3, 4, 5]
  end

  it "will sort the best cade" do
    a = [1, 2, 3, 4, 5]
    a.quicksort.must_equal [1, 2, 3, 4, 5]
  end
end
