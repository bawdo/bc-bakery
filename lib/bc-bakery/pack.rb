module BcBakery
  class Pack
    attr_accessor :product_code, :quantity, :price

    def initialize(args)
      @product_code = args[:product_code]
      @quantity     = args[:quantity]
      @price        = args[:price]
    end

  end
end
