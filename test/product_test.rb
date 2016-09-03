require 'test_helper'

class ProductTest < Minitest::Test
  def setup
 #   @post = Mark::Post.new(File.expand_path('../fixtures/valid_post.md', __FILE__))
    @product = BcBakery::Product.new(code: 'VS5', name: 'Vegemite Scroll')
  end

  def test_valid_name
    assert_equal 'Vegemite Scroll', @product.name
  end

  def test_valid_code
    assert_equal 'VS5', @product.code
  end
end
