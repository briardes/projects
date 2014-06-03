randnum = rand(100)
print 'Pick a number!'
guess = nil
count = 5
while (guess != randnum) && (count >= 0)
  guess = gets.chomp.to_i
  if guess == randnum
    puts 'Great Job!'
  elsif guess > randnum then
    puts 'Pick a lower number.'
    count -= 1
  else
    puts 'Try something higher'
    count -= 1
  end
end
puts 'Game Over!'
