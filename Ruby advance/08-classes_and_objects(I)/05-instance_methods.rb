# Instance methods
# are the methods that belongs exclusively to an object
# for eg. push method on Array or length method on String class etc. are defined as an instance method
#  its a kind of functionality that we add to our class

class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    end

    def info
        "Gadget #{@production_number} has the username #{@username}"
    end
end

phone = Gadget.new
laptop = Gadget.new

puts phone.info
puts laptop.info

# puts phone.initialize# will give error bcz its a private method

puts phone.methods #- Gadget.methods #give the method defined only on phone object

