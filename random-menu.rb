#Accept the number of items user wants to see
print "How many menu items would you like to see? "
max = gets.chomp.to_i
if max > 10 || max < 0
  puts "Have you lost your ever-loving mind?!\nLet's try 10."
  max = 10
elsif max == 0
  puts "Fine have it your way!"
end

#Defines a method to generate an array of unique random numbers 0..max
def unique_random max
  used = []
  used[0] = rand(0..(max - 1))
  (1..(max - 1)).each do |i|
    num = rand(0..(max - 1))
    while used.include?(num)
      num = rand(0..(max - 1))
    end
    used[i] = num
  end
  return used
end

#Populate 3 different arrays from which to draw each menu item element

adjectives = ["spicy", "cheese-stuffed", "creamy", "iced", "garlicy", "sweet n' sour", "puffy", "crispy", "warm", "southern"]
preps = ["shredded", "poached", "glazed", "sauteed", "julienned", "caramelized", "char-broiled", "smoked", "BBQ", "microwaved"]
foods = ["pork ribs", "bean burritos", "macaroni", "squash", "beef", "dumplings", "fruit tarts", "ravioli", "spinach", "bananas"]

#Create 3 distinct arrays populated with integers 0..9 in random orders
rand_array1 = unique_random max
rand_array2 = unique_random max
rand_array3 = unique_random max

#Return the index 10 integers 0..9 occupy in one of the random arrays
#This return value supplies the index to access in each menu array

max.times do |i|
  puts "#{i + 1}. #{adjectives[rand_array1.index(i)].capitalize} #{preps[rand_array2.index(i)]} #{foods[rand_array3.index(i)]}"
end
