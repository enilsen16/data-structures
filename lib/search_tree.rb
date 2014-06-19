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
      return 0
    else
      return @count
    end
  end

  def depth(node = @root)
    return 1 if node.children.empty?
    node.children.map { |x| 1 + depth(x) }.max
  end

  def balance(node = @root)
    return 0 if node.children.empty?
    if @root.left.nil?
      depth_left = 0
      depth_right = depth(node.right)
    elsif @root.right.nil?
      depth_right = 0
      depth_left = depth(node.left)
    else
      depth_left = depth(node.left)
      depth_right = depth(node.right)
    end
    depth_left - depth_right
  end

private

  def to_insert(top_node,value_to_insert)
    if top_node.nil?
      @count += 1
      return Node_tree.new(value_to_insert)
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
  end
end

class Node_tree
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def children
    [@left, @right].compact
  end
end
