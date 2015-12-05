module Containers; end
require  'containers/heap'
require  'containers/priority_array'

class PriorityQueue < Containers::MinHeap; end
class PriorityArrayQueue < Containers::PriorityArray; end
