class User
  attr_accessor :name, :wallet

  def initialize
    puts "what is your name?"
    @name = gets.strip
    puts "whats in your wallet?"
    @wallet = gets.to_f
  end

  def display_balance
    puts wallet
  end

  def deduct_price(price)
    @wallet = (@wallet - price).round(2)
  end
end
