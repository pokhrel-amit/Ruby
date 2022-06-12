# Monkey patching in Ruby
# It is referred to as a dynamic modification to a class
# And by dynamic modification to a class means to add new or overwrite existing methods at runtime

# There are some basic properties for monkey patching in ruby as:
# If multiple libraries have the same method, the first one will get overwritten
# If the class is not imported before the patch, it will lead to a redefination of the class instead of patching it
# All the patches are global in nature and can actually disrupt multiple libraries
# Monkey patching is used to patch up classes that are owned by the coder and its not recommended to patch a class already defined in Ruby which are used frequently like Hashes ,Lists, etc

# Before applying Patching

puts "Before blocking reverse: #{'ruby is the oop language'.reverse}"

# Applying patching

# class String
class String
  def reverse
    'Reversing blocked'
  end
end

# After applying patching
puts "After blocking reverse: #{'ruby is the oop language'.reverse}"

# In this example,Monkey patching is used to block the user to delete any key from Hash

# Before applying Patching
hash = {
  'Geeks' => 'G',
  'for' => 'F',
  'geeks' => 'g'
}

puts 'Before blocking reverse:'
hash.delete 'for'

puts "Deleted 'for' key"
puts hash
