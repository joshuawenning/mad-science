test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# Accessing elements
puts teacher_mailboxes[0][0] #=> "Adams"
puts teacher_mailboxes[1][0] #=> "Jones"
puts teacher_mailboxes[2][0] #=> "Perez"

# Return elements from the end of an array using a negative index.
puts teacher_mailboxes[2][-1] #=> "Davis"
puts teacher_mailboxes[-1][0] #=> "Perez"
puts teacher_mailboxes[-1][-22] #=> "Smith"
