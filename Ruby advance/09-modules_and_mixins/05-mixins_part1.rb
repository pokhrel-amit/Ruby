# Mixins
# Why mix in modules to classes ?

# Different classes need similar functionalities
# For example, String and Numeric both need < , <= , > , >=, and ==
# However, neither clas can be represented as a subclass of the other
# Duplication of methods across classes violets the DRY principle

# class OlympicMedal
class OlympicMedal
  include Comparable # enable access to  methods like this : < , <= , <=> , .between?

  MEDAL_VALUES = { 'Gold' => 3, 'Silver' => 2, 'Bronze' => 1 }

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(_other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new('Bronze', 5)
silver = OlympicMedal.new('Silver', 10)
gold = OlympicMedal.new('Gold', 3)

puts bronze > silver
puts bronze < silver
puts gold >= silver
puts silver != bronze
