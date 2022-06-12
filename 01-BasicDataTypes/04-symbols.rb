# 3. SYMBOLS

# Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. 
# Symbols, on the other hand, are stored in memory only once, making them faster in certain situations.
# to create a symbol, just put a colon( : ) at the start of text. for e.g :name_symbol


#Symbols Vs Strings
# object_id method returns an integer indentifier for an object


# puts "string" == "string"                      #returns true
# puts "string".object_id == "string".object_id  #returns False
# puts :symbol.object_id == :symbol.object_id    #returns true
