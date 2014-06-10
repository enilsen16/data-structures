class Array

  def sort_array
    (1...(self.length)).each do |n|
      i = n
      j = self.delete_at(i)
      while i > 0 && self[i-1] > j
        i -= 1
      end
        self.insert(i,j)
    end
  end
end
