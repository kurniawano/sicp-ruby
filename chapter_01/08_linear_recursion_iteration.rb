def factorial(n)
  if n == 1 then
    1
  else
    n * factorial(n - 1)
  end
end

puts factorial 6
def  fact_iter(product, counter, max_count)
  if counter > max_count then
    product
  else
    fact_iter(counter * product, counter + 1, max_count)
  end
end

def factorial(n)
  fact_iter(1, 1, n)
end

puts factorial(6)

def fib(n)
  case
      when n === 0
        0
      when n === 1
        1
      else
        fib(n - 1) + fib(n - 2)
  end
end

puts fib 6

def fib(n)
  fib_iter = lambda do |a, b, count|
    if count == 0 then
      b
    else
      fib_iter.call(a + b, a, count -1 )
    end
  end
  fib_iter.call(1, 0, n)
end

puts fib(7)

def count_change(amount)
  first_denomination = lambda do |kinds|
    case kinds
        when 1
          1
        when 2
          5
        when 3
          10
        when 4
          25
        when 5
          50
    end
  end
  
  cc = lambda do |amount, kinds|
    case
        when amount == 0
          1
        when amount < 0 || kinds == 0
          0
        else
          cc.call(amount, kinds - 1) + cc.call(amount - first_denomination.call(kinds), kinds)
    end
  end
  cc.call(amount, 5)
end

puts count_change 100
