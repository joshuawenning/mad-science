person = {
  name: 'tastic',
  height: '5 ft',
  weight: '101 lbs',
  hair: 'black'
}

person.each do |key, value|
  puts "tastic's #{key} is #{value}"
end