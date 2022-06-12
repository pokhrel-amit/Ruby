# Prepend keyword

# works similar to include methods
# but, it places the module method before the instance method of the class

# module purchaseable
module Purchaseable
  def purchase(item)
    "#{item} has been purchased !"
  end
end

# class Bookstore
class Bookstore
  prepend Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore !"
  end
end

bn = Bookstore.new
puts bn.purchase('biscuits')
