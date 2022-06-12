# 2. STRINGS

# 2.1 Double and Single Quotation Marks
#  can be formed as "" or ''
# also know as string literals
# the only difference between "" and '' is,string interpolation and escape charcters work only on "" .

# 2.2 Concationation

#  with the plus operator
# puts "Welcome " + "to " + "Home!"

# with the shovel operator
# puts "Welcome " << "to " << "Home!"

# with the concat method
# puts "welcome ".concat( "to " ).concat( "Home!" )

# 2.3 Substrings

# puts "hello"[0]
# puts "hello"[0,4]   # 4 is exclusive
# puts "hello"[0..4]  # 4 is inclusive
# puts "hello"[-1]    # -1 indicates the last index


# 2.3 Escape Characters
# \\  #=> Need a backslash in string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those who love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark


# 2.4 interpolation

# Allows us to evaluate a string that contains placeholder variables

# name = "Amit"
# puts "Hello, #{ name } "
# puts 'Hello, #{name}' #=> "Hello, #{name}"


#2.5 Common String Methods

# capitalize
# puts "hello".capitalize # Hello

# # include?
# puts "hello".include?("lo") #will give true

# # length
# puts "hello".length # 5

# # split
# puts "hello universe".split
# puts "hello".split("")
