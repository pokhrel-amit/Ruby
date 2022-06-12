# Adding parameters to initialize method

class Gadget
    # attr_accessor :username
    attr_reader :production_number , :username
    attr_writer :password , :username #for multiple getter and setter methods
    

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    end

    def to_s 
        "Gadget #{@production_number} has the username #{@username}.It is made from the #{self.class} class and it has ID of #{self.object_id} "
    end  
end

g1 = Gadget.new( "amit", "123" )
g2 = Gadget.new( "hari", "456" )

puts g1.username
puts g2.username
