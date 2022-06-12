# Review of Methods

# public methods allows interaction with an object
# public methods can be called by any other object
# private methods can only be called within the object
# private methods cannot be invoked by another object
# private methods cannot be called with an explicit receiver--
# only the current object is able to receive the method

# protected method ?

# Protected methods can be invoked only by objects of the same class
# Protected methods can be called within the same family of objects
# i.e if the two objects comes from the same class then they can call each other's protected method
# Protected methods are used to compare objects of the same class.

# class car
class Car
  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def comapre_car_width(car)
    self.value > car.value ? 'Your car is better!' : 'Your car is worse'
  end

    protected
#   private

  attr_reader :value
end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 20_000)

p civic.comapre_car_width(fiat)
