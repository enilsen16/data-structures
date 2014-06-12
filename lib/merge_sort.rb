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
end
