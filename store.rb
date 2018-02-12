class Store
  attr_reader :inventory

  def initialize
    @inventory = {"Apples" => "2.55", "Bananas" => "1.30", "Grenades" => "1000.00"}
    display_menu
  end

  def display_menu
    menu = ["1.  Buy something",
            "2.  Display store inventory",
            "3.  Display how much money they have left"]
    puts menu.join("\n")
  end

  def display_inventory
    formatted_inventory = inventory.to_a.map do |item|
      item.join(": $")
    end.join("\n")
    puts formatted_inventory
  end

  def price(item)
    inventory[item].to_f
  end
end
