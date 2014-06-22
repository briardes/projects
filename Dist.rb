print "Enter x value of first coordinate: "
x1 = gets.chomp.to_f
print "Enter x value of second coordinate: "
x2 = gets.chomp.to_f
print "Enter y value of first coordinate: "
y1 = gets.chomp.to_f
print "Enter y value of second coordinate: "
y2 = gets.chomp.to_f
xy = Math.sqrt((y2 - y1)**2 + (x2 - x1)**2)
puts "The distance between the points is: #{xy}"
