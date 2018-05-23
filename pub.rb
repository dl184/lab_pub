class Pub

  attr_reader :name, :till, :drink
  attr_writer :till

  def initialize(name, till, drink)
    @name = name
    @till = till
    @drink = drink
  end

  def sell_drink(drink, customer)
    if customer.age > 17
      @till += drink.price
      customer.buy_drink(drink)
    else
      return "Underage"
    end
  end


  def sell_food(food, customer)
    customer.buy_food(food)
    @till += food.price
  end

  def stock_drinks()
    return @drink.length
  end

  def stock_food()
    return @drink.length
  end

end
