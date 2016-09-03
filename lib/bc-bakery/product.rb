module BcBakery
  class Product
    attr_accessor :code, :name
    attr_reader :packs

    def initialize(args)
      @name = args[:name]
      @code = args[:code]
      @packs = []
    end

  end
end
