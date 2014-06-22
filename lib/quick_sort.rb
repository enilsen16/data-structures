#def quicksort(array, left=0, right=(array.size - 1))
class Array

  def quicksort(left=0, right=(self.size-1))
    return self if self.length <= 1
    if left < right
      pivot_index = rand(left...right)
      new_pivot_index = partiton(left, right, pivot_index)
      quicksort(left, new_pivot_index-1)
      quicksort(new_pivot_index + 1, right)
    end
    return self
  end

  def partiton(left, right, pivot_index)
    value = self[pivot_index]
    self[right], self[pivot_index] = self[pivot_index], self[right]
    store_index = left
    (left...right).each do |n|
      if self[n] < value
        self[n], self[store_index] = self[store_index], self[n]
        store_index +=1
      end
    end
    self[right], self[store_index] = self[store_index], self[right]
    return store_index
  end
end
