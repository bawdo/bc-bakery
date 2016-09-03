require 'test_helper'

class PackTest < Minitest::Test
  def setup
    @pack = BcBakery::Pack.new(product_code: 'VS5', quantity: 3, price: 6.99)
  end

  def test_valid_pack_code
    assert_equal 'VS5', @pack.product_code
  end

  def test_valid_quantity
    assert_equal 3, @pack.quantity
  end


  def test_valid_price
    assert_equal 6.99, @pack.price
  end
end
