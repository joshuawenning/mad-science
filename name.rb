puts "Tell me your name."

name = gets.chomp

puts "Hello, #{name}! Nice to meet you."

puts "Let's celebrate you, okay? (y/n)"

answer = gets.chomp

if answer == "y"
  3.times do
    puts name
  end
else
  puts "Okay, maybe we'll do that another time."
end