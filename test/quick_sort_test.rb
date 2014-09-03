require "minitest/autorun"
require "quick_sort"
require "benchmark"

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

  @best_case = (1..10000).to_a
  @reverse_array = @best_case.reverse
  @random_array = (1..10000).to_a.shuffle
  puts "best case Quick Sort"
  puts Benchmark.measure{ @best_case.quicksort }
  puts "reverse Quick Sort"
  puts Benchmark.measure{ @reverse_array.quicksort}
  puts "random Quick Sort"
  puts Benchmark.measure{ @random_array.quicksort }
end
