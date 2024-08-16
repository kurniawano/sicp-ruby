require_relative 'pair'
def abs(x)
  if x > 0
    x
  elsif x == 0
    0
  else
    -x
  end
end
module List
  def self.new(*args)
    items = args.reverse
    current = nil
    items.each do |item|
      current = Pair.new item, current
    end
    current
  end

  def self.to_s(l)
    output = "["
    current = l
    while !current.tail.nil?
      output += current.head.to_s + ", "
      current = current.tail
    end
    output += current.head.to_s + "]"
    output
  end

  def self.ref(items, index)
    if index == 0 then
      items.head
    else
      self.ref(items.tail, index - 1)
    end
  end

  def self.length(l)
    if l.nil? then
      0
    else
      1 + length(l.tail)
    end
  end

  def self.append(l1, l2)
    if l1.nil?
      l2
    else
      Pair.new l1.head, append(l1.tail, l2)
    end
  end

  def self.scale(l, factor)
    if l.nil?
      nil
    else
      Pair.new l.head * factor, self.scale(l.tail, factor)
    end
  end

  def self.map(func, l)
    if l.nil?
      nil
    else
      Pair.new method(func).call(l.head), self.map(func, l.tail)
    end
  end
end

l1 = List.new(1, 2, 3, 4)
puts List.to_s(l1)
puts l1.head
puts l1.tail.head
puts l1.tail.tail.head
puts l1.tail.tail.tail.head
puts List.ref(l1, 0)
puts List.ref(l1, 3)
puts List.length(l1)
l2 = List.new(5,6,7,8)
l3 = List.append(l1, l2)
puts List.to_s(l3)
puts List.to_s(List.scale(l1, 10))
l4 = List.to_s(List.map(:abs, List.new(-10, 2.5, -11.6, 17)))
puts l4
