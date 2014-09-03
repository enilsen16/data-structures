require "minitest/autorun"
require "merge_sort"
require "benchmark"

describe "Merge sort" do
  it "will sort in given array" do
    a = [5,8,4,3,1]
    a.mergesort.must_equal [1,3,4,5,8]
  end

  it "will sort a reverse array" do
    a = [5,4,3,2,1]
    a.mergesort.must_equal [1,2,3,4,5]
  end

  it "will sort the best case" do
    a = [1,2,3,4,5]
    a.mergesort.must_equal [1,2,3,4,5]
  end

    @best_case = (1..10000).to_a
    @reverse_array = @best_case.reverse
    @random_array = (1..10000).to_a.shuffle
    puts "best case merge"
    puts Benchmark.measure{ @best_case.mergesort }
    puts "reverse merge"
    puts Benchmark.measure{ @reverse_array.mergesort}
    puts "random merge"
    puts Benchmark.measure{ @random_array.mergesort }
end
