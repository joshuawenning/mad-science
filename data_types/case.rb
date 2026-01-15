grade = 'F'

pass = case grade
  when 'A' then "Yes!"
  when 'C' then "Yes, but try harder."
  else "No!"
end

puts pass

magic_word = 'om'

answer = gets.chomp

case
when answer == "om"
  puts 'You are wise.'
else
  puts "Meditate and come back."
end