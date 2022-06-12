# hash methods

# Hashes respond to many of the same methods as arrays do since they both employ Ruby’s Enumerable module
# methods that are specific to hashes are the #keys and #values methods
# Both of theses return arrays

books = { 
    "Infinite Jest" => "David Foster Wallace", 
    "Into the Wild" => "Jon Krakauer" 
  }

  print books.keys
  print books.values