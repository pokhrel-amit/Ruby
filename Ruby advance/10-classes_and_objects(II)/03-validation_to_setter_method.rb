# class Gadget
class Gadget
  attr_accessor :username

  attr_reader :production_number

  # attr_writer :password

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

  def password=(new_password)
    @password = new_password if validate_password(new_password)
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

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length > 6 && new_password =~ /\d/
  end
end

phone = Gadget.new('amit', 'programming123')
puts phone.password

phone.password = '123' # or phone.password=('123')
puts phone.password

phone.password = 'amit123'
puts phone.password
