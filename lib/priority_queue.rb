module Containers; end
require  'containers/heap'

class PriorityQueue

  def initialize
    @heap = Containers::MinHeap.new
  end

  def push(priority, item)
    @heap.push(priority, item)
  end

  def pop
    @heap.pop
  end

  def size
    @heap.size
  end

  def empty?
    @heap.empty?
  end

  def clear
    @heap.clear
  end
end
