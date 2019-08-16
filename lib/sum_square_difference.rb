# Implement your procedural solution here!

def sum_of_squares(limit)
    i = 0
    squares = []
    while i <= limit
        squares << i ** 2
        i += 1
    end
    squares.inject{ |sum, n| n + sum }
end

def square_of_sums(limit)
    array = (1..limit).to_a 
    sum = array.inject{ |sum , n| n + sum }
    sum ** 2
end

def sum_square_difference(limit)
    square_of_sums(limit) - sum_of_squares(limit)
end

puts sum_of_squares(10)
puts square_of_sums(10)
puts sum_square_difference(10)
puts sum_square_difference(100)