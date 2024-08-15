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

def average(x, y)
  (x + y) / 2.0
end

def sqrt(x)
  is_good_enough = lambda do |guess|
    abs(square(guess) - x) < 0.001
  end

  improve = lambda do |guess|
    average(guess, x.to_f / guess)
  end

  sqrt_iter = lambda do |guess|
    if is_good_enough(guess, x) then
      guess
    else
      sqrt_iter improve(guess)
    end
  end

  sqrt_iter(1, x)
end

sqrt 9
sqrt(100 + 37)
sqrt(sqrt(2) + sqrt(3))
square(sqrt(1000))

