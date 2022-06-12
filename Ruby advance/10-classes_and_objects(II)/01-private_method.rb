# private method

# it can't be called outside of the object
# it can only be called by the instance method on the same object

# class Gadget
class Gadget
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
     It is made from the #{self.class} class and it has ID
     of #{object_id} "
  end

  private

  def generate_production_number
    start_digits = rand(10_000..99_999)
    end_digits = rand(10_000..99_999)
    alphabet = ('A'..'Z').to_a
    middle_digits = '2022'
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  
end

phone = Gadget.new('user', 'password')

# this will give an error of private method call
# p phone.generate_production_number
