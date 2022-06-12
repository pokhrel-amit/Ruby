
# Parameters and Arguments

# Parameters are variables that our method will receive when it is called
# arguments are the actual variables that get passed to the method when it is called

def greet ( name )
    "hello " + name + "!"
end

puts greet("amit")

# Default parameters

def greet ( name = "stranger")
    "hello " + name + "!"
end

puts greet("amit")
puts greet