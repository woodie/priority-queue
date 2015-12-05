class Containers::PriorityArray

  # This is a horrible idea. Use a heap instead.

  def initialize
    @data = []
  end

  def push(key, value=key)
    raise ArgumentError, "The keys must not be nil." unless key
    node = {key:key, value:value}
    if @data.empty?
      @data.push(node)
    else
      index = @data.index {|n| n[:key] >= key}
      index.nil? ? @data.push(node) : @data.insert(index, node)
    end
  end

  def pop
    node = @data.shift
    node.nil? ? nil : node[:value]
  end

  def size
    @data.size
  end

  def empty?
    @data.empty?
  end

  def clear
    @data = []
  end
end
