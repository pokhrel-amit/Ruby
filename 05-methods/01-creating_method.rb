# creating method

# we can create our own custom method in ruby

def my_name
    "amit pokhrel"
end

puts my_name

# def ==> is a built-in keyword that tells Ruby that this is the start of a method definition.
# my_name ==> is the name of our new method
# amit pokhrel =>is the code inside the body
# end => tells ruby about end of the method



# Methods Names

# can use numbers, capital letters,lowercase letters and the special characters _ , ? and =
# snake_case for naming
# Always start with lower case character bcz name that start with capital letters are constants in ruby

# what we cant do ?

# We cannot name our method one of Ruby’s approximately 40 reserved words, such as end, while, or for. 
# We cannot use any symbols other than _, ?, !, and =.
# We cannot use ?, !, or = anywhere other than at the end of the name.
# We cannot begin a method name with a number.

# method_name      # valid
# _name_of_method  # valid
# 1_method_name    # invalid
# method_27        # valid
# method?_name     # invalid
# method_name!     # valid
# begin            # invalid (Ruby reserved word)
# begin_count      # valid