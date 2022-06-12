# Loops

# loop
# It’s an infinite loop that will keep going unless we specifically request for it to stop, using the break command

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# while loop
# A while loop is similar to the 'loop' loop except that we declare the condition that will break out of the loop up front.

i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

# Until loop
# The until loop is the opposite of the while loop. 
# A while loop continues for as long as the condition is true, whereas an until loop continues for as long as the condition is false.
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end


# Ranges
# use to define interval
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4



# for loop
# A for loop is used to iterate through a collection of information such as an array or range

for i in 0..5
    puts "#{i} hello guys!"
  end



# Times loop
# If we need to run a loop for a specified number of times then we use it

5.times do
    puts "Hello, world!"
  end




