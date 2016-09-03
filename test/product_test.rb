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
end
