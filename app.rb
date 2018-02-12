require "pry"
require_relative "user"
require_relative "store"

class App
  attr_accessor :user, :store

  def initialize
    @user = User.new
    @store = Store.new
    select_option
  end

  def select_option
    puts "Select an option."
    option = gets.strip

    case option
    when "1"
      purchase
    when "2"
      store.display_inventory
    when "3"
      user.display_balance
    else
      abort "Thanks for shopping at Produce and Ballistics! Have a Nice Day!"
    end

    select_option
  end

  def purchase
    store.display_inventory
    puts "What do you want to buy?"
    item = gets.strip
    price = store.price(item)
    if price == 0
      puts "Sorry we don't carry that item."
    else
      user.deduct_price(price)
      puts "You purchased #{item}! Your current balance is #{user.wallet}!"
    end
  end
end

app = App.new
