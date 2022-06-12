# Getter Methods
 
class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    end

    def to_s 
        "Gadget #{@production_number} has the username #{@username}.It is made from the #{self.class} class and it has ID of #{self.object_id} "

    end

    #getter methods
    def username #best practise to give the same name as of instance variable
        @username
    end
    
    def production_number
        @production_number
    end
     
end

phone = Gadget.new
laptop = Gadget.new

# for now if we directly try to access the instance vaiable then it will throw an error of private instance variables
# so, we want to give...read only access outside the class ensuring the encapsulation property
# for that, we will use getter method to get the value of instance variables

puts phone.username
puts phone.production_number

