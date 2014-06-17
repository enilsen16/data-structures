class Array
  def mergesort
    return self if self.length == 1
    left, right = self.each_slice((self.size/2.0).round).to_a
    return merge(left.mergesort, right.mergesort)
  end

  def merge(left_array, right_array)
    return_array = []
    until left_array.empty? || right_array.empty?
      if left_array[0] < right_array[0]
        return_array << left_array.shift
      else
        return_array << right_array.shift
      end
    end
    return_array + right_array + left_array
  end

    def merge_sort
    return self if self.size < 2
    arr = self.combination(1).to_a
    merge = []
    until arr.size == 1
      left, right = arr.shift, arr.shift
      until left.size.zero? || right.size.zero?
        if left.first < right.first
          merge << left.shift
        else
          merge << right.shift
        end
      end
      if left.size > 0
        merge += left.slice!(0..left.size)
      else
        merge += right.slice!(0..right.size)
      end
      arr << merge.slice!(0..merge.size)
    end
    arr.flatten
  end
end
