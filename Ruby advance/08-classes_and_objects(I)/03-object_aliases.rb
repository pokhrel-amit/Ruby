class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

p shiny == flashy


# but if we do...
glossy = shiny
# then it wont create a new memory location rather it will point to the memory location of shiny object

p glossy == shiny

