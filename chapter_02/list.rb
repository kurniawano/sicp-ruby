require_relative 'pair'

def list(*args)
  items = args.reverse
  current = nil
  items.each do |item|
    current = Pair.new item, current
  end
  current
end

def print_list(l)
  output = "["
  current = l
  while !current.tail.nil?
    output += current.head.to_s + ", "
    current = current.tail
  end
  output += current.head.to_s + "]"
  output
end

def list_ref(items, index)
  if index == 0 then
    items.head
  else
    list_ref(items.tail, index - 1)
  end
end

def length(l)
  if l.nil? then
    0
  else
    1 + length(l.tail)
  end
end

def append(l1, l2)
  if l1.nil?
    l2
  else
    Pair.new l1.head, append(l1.tail, l2)
  end
end


l1 = list(1, 2, 3, 4)
puts print_list(l1)
puts l1.head
puts l1.tail.head
puts l1.tail.tail.head
puts l1.tail.tail.tail.head
puts list_ref(l1, 0)
puts list_ref(l1, 3)
puts length(l1)
l2 = list(5,6,7,8)
l3 = append(l1, l2)
puts print_list(l3)
