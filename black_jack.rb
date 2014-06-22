class Card
  def rank
    @rank = [1, 2, 3, 4, 5, 6, 7, 8, 9, :Jack, :Queen, :King, :Ace].sample
  end

  def suit
    @suit = [:Hearts, :Diamonds, :Spades, :Clubs].sample
  end

  def convert
    if card.rank == :Jack
      @card_rank = 10
    elsif card.rank == :Queen
      @card_rank = 10
    elsif card.rank == :King
      @card_rank = 10
    else @card_rank = card.rank
    end
  end
end
card = Card.new
deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, :Jack, :Queen, :King, :Ace]
puts "#{deck} is without #{card.rank}"
