require 'test_helper'

class ProductTest < Minitest::Test
  def setup
    @product = BcBakery::Product.new(code: 'VS5', name: 'Vegemite Scroll')
  end

  def test_valid_name
    assert_equal 'Vegemite Scroll', @product.name
  end

  def test_valid_code
    assert_equal 'VS5', @product.code
  end

  def test_packs_returns_array
    assert_instance_of Array, @product.packs
  end

  def test_create_pack
    assert_equal 0, @product.packs.count
    @product.create_pack(product_code: @product.code, quantity: 3, price: 6.99)
    assert_equal @product.packs.first.quantity, 3
    assert_equal @product.packs.first.price, 6.99
  end
end
