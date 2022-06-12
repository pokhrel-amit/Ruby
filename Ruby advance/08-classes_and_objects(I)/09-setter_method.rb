# Setter Method

# it is another type of instance method resposible for setting new values to its instance variable
# also called writer method bcz they write the method

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

    #setter methods
    def password=(new_password) 
        @password = new_password
    end

    def username=(new_username)
        @username = new_username
    end
     
end

phone = Gadget.new
laptop = Gadget.new


puts phone.username
puts phone.production_number
# puts phone.password # will give error cuz we haven't set any getter method for password

# but we can set the value for password as
phone.password=("coolpassword!")

phone.username=("hariOm")
puts phone.username