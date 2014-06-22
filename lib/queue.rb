class Queue
  attr_accessor :head, :tail, :size

  def initialize
    @size = 0
  end

  def enqueue(item)
    if @head == nil
      @head = item
    else
      @tail.behind = item
    end
    @tail = item
    @size += 1
  end

  def dequeue
    if @size == 0
      raise "stack is empty"
    else
      current_item = @head
      new_head = current_item.behind
      @head = new_head
      @size -= 1
      return current_item
    end
  end
end

class Item
  attr_accessor :data, :behind

  def initialize(data)
    @data = data
    @behind = behind
  end
end
