require "test_helper"
require "linked_list"

describe "linked list" do
  it "will insert a certain value to the top of the list" do
    car = Car.new(333)
    racetrack = Racetrack.new
    racetrack.insert_head(car)
    racetrack.head.plate.must_equal 333
  end

  it "will return the amount of cars on the race track" do
    car = Car.new(444)
    racetrack = Racetrack.new
    racetrack.insert_head(car)
    racetrack.count.must_equal 1
  end
end
