
# Return in methods

#Ruby offers implicit return for method
#that is,it will return the last expression that was evaluated even without the return keyword


# an explicit return can be useful when we want to write a method that checks for input errors before continuing
def even_odd(number)
    unless number.is_a? Numeric
         return "A number was not entered."
    end
  
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
end

puts even_odd(24)
puts even_odd("hy")
