def abs(x)
  if x > 0
    x
  elsif x == 0
    0
  else
    -x
  end
end

abs(-5)
abs(0)
abs(5)

def greater_or_equal(x, y)
  x > y || x == y
end

greater_or_equal 10, 5
greater_or_equal 10, 10
greater_or_equal 10, 15

