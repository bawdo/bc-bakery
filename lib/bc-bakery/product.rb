module BcBakery
  class Product
    attr_accessor :code, :name
    attr_reader :packs

    def initialize(args)
      @name  = args[:name] || raise(ArgumentError,":name is missing")
      @code  = args[:code] || raise(ArgumentError,":code is missing")
      @packs = []
    end

    def create_pack(args)
      # Warning tightly coupling this class with the Pack class. 
      packs << BcBakery::Pack.new(product_code: self.code, quantity: args[:quantity], price: args[:price])
    end

  end
end
