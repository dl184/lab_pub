require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")

class CustomerTest <MiniTest::Test

  def setup
    @customer1 = Customer.new("Bob", 50, 70)
    @customer2 = Customer.new("Frank", 10, 16)
  end

  def test_customer_has_name
    assert_equal("Frank", @customer2.name)
  end

def test_customer_has_wallet
  assert_equal(10, @customer2.wallet)
end

def test_check_age
  assert_equal(16, @customer2.age)
end

def test_customer_drunkenness_zero
  assert_equal(0, @customer1.drunkenness)
end

end
