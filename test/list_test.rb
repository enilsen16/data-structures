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

  it "will search for a given node all ready created" do
    car = Car.new(444)
    racetrack = Racetrack.new
    racetrack.insert_head(car)
    searched_car = racetrack.search(444)
    searched_car.must_equal car
  end

  it "will return nil if it searches for nothing" do
    racetrack = Racetrack.new
    searched_car = racetrack.search(444)
    searched_car.must_equal nil
  end

  it "will remove a given car" do
    racetrack = Racetrack.new
    racetrack.insert_head(Car.new(444))
    racetrack.insert_head(Car.new(555))
    racetrack.insert_head(Car.new(333))
    racetrack.remove(555)
    racetrack.search(555).must_equal nil
  end

  it "will print a list as a csv" do
    car = Car.new(444)
    racetrack = Racetrack.new
    racetrack.insert_head(car)
    racetrack.to_s.must_equal car.plate.to_s
  end
end
