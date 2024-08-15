def square(x)
  x * x
end

square 21
square(2 + 5)
square(square(3))

def sum_of_squares(x, y)
  square(x) + square(y)
end

sum_of_squares 3, 4

def f(a)
  sum_of_squares(a + 1, a * 2)
end

f 5
