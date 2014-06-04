class List
  attr_reader :top, :count

  def initialize
    @count = 0
  end

  def push(node)
    if @top == nil
      @top = node
    else
      node.below = @top
      @top = node
    end
    @count += 1
  end

  def pop
    if @count == 0
      raise "stack is empty"
    else
      current_node = @top
      new_top = current_node.below
      @top = new_top
      return current_node
      @count -= 1
    end
  end
end

class Node
  attr_accessor :data, :below

  def initialize(data)
    @data = data
    @below = below
  end
end
