module BcBakery
  class Pack
    attr_accessor :product_code, :quantity, :price

    def initialize(args)
      @product_code = args[:product_code] || raise(ArgumentError, ":product_code is missing")
      @quantity     = args[:quantity] || raise(ArgumentError, ":quantity is missing")
      @price        = args[:price] || raise(ArgumentError, ":price is missing")
    end

  end
end
