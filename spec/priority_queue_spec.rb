require 'priority_queue'

RSpec.describe PriorityQueue do
  before(:all) do
    @queue = PriorityQueue.new
  end

  context "when the queue is empty" do
    it "size will be zero" do
      expect(@queue.size).to be(0)
    end
    it "empty? will return true" do
      expect(@queue.empty?).to be(true)
    end
    it "pop will return nil" do
      expect(@queue.pop).to be(nil)
    end
  end

  context "when items are added" do
    it "items are returned in priority order" do
      @queue.push(5, :foo)
      @queue.push(9, :bar)
      @queue.push(0, :baz)
      @queue.push(3, :qux)
      expect(@queue.pop).to be(:baz)
      expect(@queue.pop).to be(:qux)
      expect(@queue.pop).to be(:foo)
      expect(@queue.pop).to be(:bar)
    end
    it "clear will empty the queue" do
      @queue.push(5, :foo)
      @queue.push(9, :bar)
      @queue.clear
      expect(@queue.empty?).to be(true)
    end
  end

end
