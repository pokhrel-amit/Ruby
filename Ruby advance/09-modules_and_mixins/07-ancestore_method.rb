module Purchaseable
    def purchase(item)
        "#{item} has been purchased !"
    end
end

class Bookstore
    include Purchaseable

    def purchase(item)
        "You bought a copy of #{item} at the bookstore !"
    end
end
 
class Supermarket
    include Purchaseable

    def purchase(item)
        "Thanks for visiting the supermarket and buying #{item}"
    end
end

class CornerMart < Supermarket
    def purchase(item)
        "Yay! A great purchase of #{item} from your corner mart"
    end
end

# p Bookstore.ancestors

# bn = Bookstore.new
# p bn.purchase("1984")

# p Supermarket.ancestors

# shoprite =Supermarket.new
# p shoprite.purchase("Cereal")

p CornerMart.ancestors

quickstop = CornerMart.new
p quickstop.purchase("Slim Jims")
