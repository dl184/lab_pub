require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class PubTest <MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 5, 2)
    @drink2 = Drink.new("Cider", 3, 1)
    @drink3 = Drink.new("Vodka", 7, 3)
    @drink4 = Drink.new("Jaeger Bomb", 6, 11)
    drink = [@drink1, @drink2, @drink3, @drink4]
    @pub = Pub.new("CodeClan Inn", 100, drink)
    @customer1 = Customer.new("Steve", 200, 25, 0)
    @customer2 = Customer.new("Jenny", 5, 12, 0)
    @customer3 = Customer.new("Bob", 50, 50, 11)
    @food1 = Food.new("Pizza", 15, 8)
    @food2 = Food.new("Kebab", 9, 9)
    @food3 = Food.new("Crisps", 2, 1)
  end

  def test_pub_has_name
    assert_equal("CodeClan Inn", @pub.name)
  end

  def test_pub_has_till
    assert_equal(100, @pub.till)
  end

  def test_pub_can_sell
    @pub.sell_drink(@drink1, @customer1)
    assert_equal(105, @pub.till)
    assert_equal(195, @customer1.wallet)
  end

  def test_check_age_status
    assert_equal("Underage", @pub.sell_drink(@drink1, @customer2))
  end

  def test_sell_drink_drunkenness_increase
    @pub.sell_drink(@drink1, @customer1)
    assert_equal(2, @customer1.drunkenness)
  end

  def test_dont_sell_drink_to_drunk
    result = @pub.sell_drink(@drink1, @customer3)
    assert_equal("Too drunk", result)
  end

  def test_check_food
    @pub.sell_food(@food1, @customer1)
    assert_equal(0, @customer1.drunkenness)
  end

  def test_rejuv_calc
    @pub.sell_food(@food2, @customer3)
    assert_equal(2, @customer3.drunkenness)
  end

  def test_stock_drinks
    assert_equal(4, @pub.stock_drinks())
  end

end
