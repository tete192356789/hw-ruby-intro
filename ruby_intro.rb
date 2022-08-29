# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  temp = 0
  if arr.length() == 0
    return
  else
    arr.each {|num| temp +=num}
    return temp
  end
end
def max_2_sum arr
  # YOUR CODE HER
  case arr.length()
  when 0
    return 0
  when 1
    return arr[0]
  else
    return arr[-1] + arr[-2]
  end
end
def sum_to_n? arr, n
  # YOUR CODE HERE
  case arr.length()
  when 0 
    return 0
  when 1
    return arr[0]
  else
    return arr[-1] + arr[-2]
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return  "Hello, #{name.to_s}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiouAEIOU\W]/.match(s)  == nil
    return false
  end
  return true
 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/[^0-1]/)
    return false

  elsif s == ""
    return false
  else
    decimal = s.to_i(2)
    if decimal%4 == 0
      return true
    else
      return false
    end
  end
    
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    if isbn != "" && price>0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError , "Isbn or price Invalid value."
    end  
  end
  def price_as_string
    decimal_2 = sprintf("%.2f",@price)
    return "$#{decimal_2}"
  end
end 
