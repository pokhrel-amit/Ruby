# Symobols as Hash Keys

# Rocket syntax

american_cars = {
    :chevrolet => "corvette" ,
    :ford => "Mustang" ,
    :dodge => "Ram"
}

# Symbols syntax

japanese_cars = {
    honda: "Accord", 
    toyota: "corolla",
    nissan: "altima" 
}

# any of the above methods can be used
# but for accessing the value,standard procedure should be follwed as previous done

print american_cars[:ford]
print japanese_cars[:honda]