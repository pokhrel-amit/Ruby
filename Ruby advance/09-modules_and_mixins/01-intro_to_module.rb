# What is module ?
# A module is a toolbox or container of methods and constants
# Modules methods and constants can be used as needed
# Modules create namespaces for methods with the same name
# Modules cannot be used to create instances
# Modules can be mixed into classses to add behaviour

# Syntax and style
# Modules names are written in UpperCamelCase
# constants in modules should be written in ALL CAPS
# Access module methods with the dot operator(.)
# Access module constants with the :: symbol
# The :: symbol is called the scope resolution operator

module LengthConversions
  WEBSITE = 'https://www.angelo.edu/dept/agriculture/faculty'

  # we can also write LengthConversions.miles_to_feet.But if in future  we cahnge the module name then whole code containing lengthconversion need to be change
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions::WEBSITE

puts LengthConversions.miles_to_feet(100)
