class Search_tree
  attr_reader :root,:count

  def initialize(root=nil, count=0)
    @root = root
    @count = count
  end

  def insert(value)
    @root = to_insert(@root, value)
  end

  def contain(value)
    search_for(@root, Node_tree.new(value))
  end

  def size
    if @count == 0
      return nil
    else
      return @count
    end
  end

  def depth
  end

  def balance
  end

private

  def to_insert(top_node,value_to_insert)
    if top_node.nil?
      Node_tree.new(value_to_insert)
      @count += 1
    elsif top_node == value_to_insert
      top_node.value = value_to_insert
    elsif value_to_insert < top_node.value
      top_node.left = to_insert(top_node.left,value_to_insert)
    elsif value_to_insert > top_node.value
      top_node.right = to_insert(top_node.right,value_to_insert)
    end
    return top_node
  end

  def search_for(top_node, new_node)
    if top_node.nil?
      return false
    end

    if top_node.value == new_node.value
      return true
    elsif new_node.value < top_node.value
      top_node = search_for(top_node.left, new_node)
    else
      top_node = search_for(top_node.right, new_node)
    end
      return top_node
      binding.pry
  end
end

class Node_tree
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end
end
