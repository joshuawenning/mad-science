# Check if a word has no repeating letters
# `p` is puts + inspect

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')

  p string_array

  unique_length = string_array.uniq.length

  p unique_length

  original_length == unique_length
end

puts isogram?("Odin")

# Caveat: calling `puts` on anything that is `nil` or an empty string or
# collection will just print a blank line to your terminal. `p` yields
# more information adding the #inspect method.