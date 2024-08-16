class Pair
  attr_reader :head, :tail
  def initialize(x, y)
    @head = x
    @tail = y
  end
  def [](index)
    if index == 0 then
      @head
    else
      @tail[n-1]
    end
  end
end

# x = Pair.new 1, 2
# puts x.head
# puts x.tail
# y = Pair.new 3, 4
# z = Pair.new x, y
# puts z.head.head
# puts z.tail.head
