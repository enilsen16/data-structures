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
      return nodde if nodde.value == value
      nodde = nodde.prev
    end while nodde != nil
  end

  def remove(node_to_delete)
    if @head == node_to_delete
      @head = @head.prev
      @count -= 1
    else
      current_nodde = @head.prev
      while current_nodde
        if current_nodde == node_to_delete
          current_nodde.nexxt.prev = current_nodde.prev unless current_nodde.nexxt.nil?
          current_nodde.prev.nexxt = current_nodde.nexxt unless current_nodde.prev.nil?
          @count -= 1
        end
        current_nodde = current_nodde.prev
      end
    end
  end

  def dedupe
    pointer = @head
    current_check = @head.prev
    while pointer != nil
      current_check = pointer.prev
      while current_check !=nil
        # puts "Pointer @ #{pointer.value}, checking #{current_check.value}"
        if pointer.value == current_check.value
          # puts "removing #{current_check.value}"
          remove(current_check)
        end
        current_check = current_check.prev
      end
      pointer = pointer.prev
    end
    return self
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
