class Game
  def new_guess
    print 'Guess a number 1-100: '
    @guess = gets.chomp.to_i
  end

  def new_rand
    @randnum = rand(1..100)
  end

  def feedback
    if @guess == @randnum
      puts "Great job! You finished with #{@count} chances left."
    elsif @guess > @randnum && @count >= 1
      puts "Too high, try again. You have #{@count} chances left."
    elsif @count >= 1
      puts "Too low, try again. You have #{@count} chances left."
    end
  end

  def set_count
    @count = 4
  end

  def run
    new_rand
    set_count
    while @guess != @randnum && @count >= 0
      new_guess
      feedback
      @count -= 1
    end
    puts "Game over, the answer was #{@randnum}." if @guess != @randnum
  end
end
Game.new.run
