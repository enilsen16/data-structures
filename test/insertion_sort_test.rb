require "test_helper"
require "insertion_sort"
require "benchmark"

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

  @best_case = (1..10000).to_a
  @reverse_array = @best_case.reverse
  @random_array = (1..10000).to_a.shuffle
  puts "best insertion"
  puts Benchmark.measure{ @best_case.sort_array }
  puts "reverse insertion"
  puts Benchmark.measure{ @reverse_array.sort_array }
  puts "random insertion"
  puts Benchmark.measure{ @random_array.sort_array }
end
