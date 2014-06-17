require 'pry'
require 'pry-nav'

class Lisst
  attr_accessor :head, :tail, :count

  def initialize
    @count = 0
    @head = head
    @tail = tail
  end

  def append(nodde)
    if @head == nil
      @head = nodde
      @tail = nodde
    else
      nodde.nexxt = @tail
      @tail.prev = nodde
      @tail = nodde
    end
      @count += 1
  end

  def search(value)
    return nil if @head == nil
      nodde = @head
    begin
      return value if nodde.value == value
      nodde = nodde.prev
    end while nodde != nil
  end

  def remove(node_to_delete)
    if @head == node_to_delete
      @head = @head.prev
    else
      current_nodde = @head.prev
      prev_nodde = @head
      while current_nodde
        if current_nodde == node_to_delete
          prev_nodde.nexxt = current_nodde.prev
          
          return nil
        end
        prev_nodde = current_nodde
        current_nodde = current_nodde.nexxt
      end
    end
    @count -= 1
    return nil
  end

  def dedupe
    pointer = @head
    current_check = @head.prev
    while pointer != @tail
      searched = search(current_check)
      if pointer == searched
        remove(searched)
        @count -= 1
      else
        if searched == @tail
          new_pointer = pointer.prev
          pointer = new_pointer
        else
        end
        new_check = searched.prev
        searched = new_check
      end
    end
  end
end

class Nodde
  attr_accessor :value, :nexxt, :prev

  def initialize(value)
    @value = value
    @nexxt = nexxt
    @prev = prev
  end
end
