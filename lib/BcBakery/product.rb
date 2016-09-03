module BcBakery
  class Product
    attr_accessor :code, :name

    def initialize(args)
      @name = args[:name]
      @code = args[:code]
    end
  end
end
