# The select method

# also known as #filter
# passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

print invited_list

# by using #select method,

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

selected_friends = friends.select { |friend| friend != 'Brian' }

print selected_friends


# lets see the response of people who are comming

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}

