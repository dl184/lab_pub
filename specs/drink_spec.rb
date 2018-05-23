require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class DrinkTest <MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 5, 2)
    @drink2 = Drink.new("Cider", 3, 1)
    @drink3 = Drink.new("Vodka", 7, 3)
  end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(5, @drink1.price)
  end

def test_alcohol_level
  assert_equal(1, @drink2.alcohol_level)
end


end 
