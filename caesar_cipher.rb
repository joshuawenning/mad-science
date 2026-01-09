def caesar_cipher(string, shift_num)
  alphabet = ('a'..'z').to_a
  shifted_alphabet = alphabet.rotate(shift_num)

  string.chars.map do |char|
    if char >= 'a' && char <= 'z'
      shifted_alphabet[alphabet.index(char)]
    elsif char >= 'A' && char <= 'Z'
      shifted_alphabet[alphabet.index(char.downcase)].upcase
    else
      char
    end
  end.join
end

puts caesar_cipher("Abc", 3)
puts caesar_cipher("What a string!", 5)

# alphabet = ('a'..'z').to_a
# puts alphabet.rotate(2)
