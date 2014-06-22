class Change
  # attr_accessor :money
  def initialize(money)
    @cents = (money * 100).to_i
  end

  def money
    @cents / 100.0
  end

  def make_change
    pennies = @money
    {:pennies => pennies, :nickels => @cents / 5}
    if @cents < 5
      {:pennies => @cents, :nickels => 0}
    else
      {:nickels => @cents / 5, :pennies => @cents % 5}
    end
  end
end
