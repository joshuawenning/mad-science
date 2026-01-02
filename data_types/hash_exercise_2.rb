# Look at Ruby's merge method. Notice that it has two versions. What is the
# difference between merge and merge!? Write a program that uses both and
# illustrate the differences.

h1 = { a: 1, b: 2 }
h2 = { b: 3, c: 4 }

new_hash = h1.merge(h2)

puts new_hash
puts h1 # h1 is unmodified

h3 = { x: 1, y: 2 }
h4 = { y: 3, z: 4 }

puts h4
h4.merge!(h3)
puts h3 #=> {x: 1, y: 2} h3 is the same
puts h4 #=> {y: 2, z: 4, x: 1} h4 is modified

# Their solution
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat
puts weight
puts cat.merge!(weight)
puts cat
puts weight


