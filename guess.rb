randnum = rand(100)
print 'Pick a number!'
guess = nil
while guess != randnum
  guess = gets.chomp.to_i
  if guess == randnum
    puts 'Great Job!'
  elsif guess > randnum then
    puts 'Pick a lower number.'
  else
    puts 'Try something higher'
  end
end
