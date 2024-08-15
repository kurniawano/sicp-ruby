def abs(x)
  case
      when x > 0
        x
      when x == 0
        0
      else
        -x
  end
end

def square(x)
  x * x
end

def is_good_enough(guess, x)
  abs(square(guess) - x) < 0.001
end

def average(x, y)
  (x + y) / 2.0
end

def improve(guess, x)
  average(guess, x.to_f / guess)
end

def sqrt_iter(guess, x)
  if is_good_enough(guess, x) then
    guess
  else
    sqrt_iter(improve(guess, x), x)
  end
end

def sqrt(x)
  sqrt_iter(1, x)
end

sqrt 9
sqrt(100 + 37)
sqrt(sqrt(2) + sqrt(3))

