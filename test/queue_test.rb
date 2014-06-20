require "test_helper"
require "queue"

describe "queue" do
  it "must add value to the queue" do
    item = Item.new(4)
    queue = Queue.new
    queue.enqueue(item)
    queue.tail.must_equal item
  end

  it "removes the correct item from the front of the line" do
    item = Item.new(4)
    queue = Queue.new
    queue.enqueue(item)
    queue.head.must_equal item
    queue.dequeue
    queue.head.must_equal nil
    queue.size.must_equal 0
  end

  it "returns the total count of items" do
    item = Item.new(4)
    queue = Queue.new
    queue.enqueue(item)
    queue.head.must_equal item
    queue.size.must_equal 1
  end

  it "returns zero if there is nothing in the queue" do
    item = Item.new(4)
    queue = Queue.new
    queue.enqueue(item)
    queue.dequeue
    queue.head.must_equal nil
    queue.size.must_equal 0
  end
end
