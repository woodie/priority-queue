require 'priority_queue'

RSpec.describe PriorityQueue do
  context "when we add jobs" do
    it "inserts then in order" do
      queue = PriorityQueue.new
      queue.push(5, 'foo')
      queue.push(9, 'bar')
      queue.push(0, 'baz')
      expect(queue.pop) == 'baz'
      expect(queue.pop) == 'foo'
      expect(queue.pop) == 'bar'
    end
  end 

end
