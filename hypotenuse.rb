print 'Enter the length of side A:'
a = gets.chomp
print 'Enter the length of side B:'
b = gets.chomp
puts "The length of the hypotenuse is :#{Math.sqrt((a.to_f * a.to_f) + (b.to_f * b.to_f))}."
