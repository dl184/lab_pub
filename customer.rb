class Customer

  attr_reader :name, :wallet, :age, :drunkenness
  attr_writer :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end


  def buy_drink(drink)
    if @drunkenness <= 10
      @wallet -= drink.price
      @drunkenness = @drunkenness + drink.alcohol_level
    else
      return "Too drunk"
    end
  end

  def buy_food(food)
    @wallet -= food.price
    @drunkenness -= food.rejuv_lv
    if @drunkenness < 0
      @drunkenness = 0
    end 
  end




end
