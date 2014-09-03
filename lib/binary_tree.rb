class Tree
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
    @@response = []
  end

  def preorder
    @@response << value
    left.preorder if left
    right.preorder if right
    @@response
  end

  def in_order
    left.in_order if left
    @@response << value
    right.in_order if right
    @@response
  end

  def postorder
    left.postorder if left
    right.postorder if right
    @@response << value
    @@response
  end
end
