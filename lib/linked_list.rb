class Racetrack
  attr_reader :head, :count

  def initialize
    @count = 0
  end

  def insert_head(car)
    if @head == nil
      @head = car
    else
      car.next = @head
      @head = car
    end
    @count += 1
  end
end

class Car
  attr_reader :plate, :next

  def initialize(plate)
    @next = nil
    @plate = plate
  end
end
