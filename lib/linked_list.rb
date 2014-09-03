class Racetrack
  attr_reader :head, :count

  def initialize
    @count = 0
  end

  def insert_head(car)
    if @head == nil
      @head = car
    else
      car.nexxt = @head
      @head = car
    end
    @count += 1
  end

  def search(plate)
    return nil if @head == nil
    car = @head
    begin
      return car if car.plate == plate
      car = car.nexxt
    end while car != nil
  end

  def remove(plate)
    if @head.plate == plate
      head = @head.nexxt
    else
      current_car = @head.nexxt
      prev_car = @head
      while current_car
        if current_car.plate == plate
          prev_car.nexxt = current_car.nexxt
          return nil
        end
        prev_car = current_car
        current_car = current_car.nexxt
      end
    end
    return nil
  end

  def to_s
    car = @head
    str = ""
    while car != nil
      if car.plate.kind_of? Integer or car.plate.kind_of? Float
        this_str = "#{car.plate}"
      elsif car.plate.kind_of? Symbol
        this_str = ":#{car.plate}"
      else
        this_str = "'#{car.plate}'"
      end
    str += this_str
    str += "," if car.nexxt != nil
    car = car.nexxt
    end
    puts "#{car.to_s}"
  return str.to_s
  end
end

class Car
  attr_accessor :plate, :nexxt

  def initialize(plate)
    @plate = plate
    @nexxt = nexxt
  end
end
