# shortcut accessor methods

class Gadget
    
    # #getter methods
    # def username #best practise to give the same name as of instance variable
    #     @username
    # end
    
    # def production_number
    #     @production_number
    # end

    # #setter methods
    # def password=(new_password) 
    #     @password = new_password
    # end

    # def username=(new_username)
    #     @username = new_username
    # end

# Instead of writing the above code, we can do it in a shorcut way as

    # attr_accessor :username
    attr_reader :production_number , :username
    attr_writer :password , :username #for multiple getter and setter methods
    

    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    end

    def to_s 
        "Gadget #{@production_number} has the username #{@username}.It is made from the #{self.class} class and it has ID of #{self.object_id} "
    end  
end

phone = Gadget.new

puts phone.username
phone.username= ("amit")
puts phone.username