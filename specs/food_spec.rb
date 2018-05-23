require("minitest/autorun")
require("minitest/rg")

require_relative("../food.rb")

class FoodTest <MiniTest::Test

  def setup
    @food1 = Food.new("Pizza", 15, 8)
    @food2 = Food.new("Kebab", 9, 9)
    @food3 = Food.new("Crisps", 2, 1)
  end

  def test_food_name
  assert_equal("Pizza", @food1.name)
  end

  def test_food_price
    assert_equal(9, @food2.price)
  end

  def test_rejuv_level
    assert_equal(1, @food3.rejuv_lv)
  end
end 
