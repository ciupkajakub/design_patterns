module AbstractFactory
  class AbstractPizza
    def initialize(ingredient_factory)
      @ingredient_factory = ingredient_factory.new
    end

    def dough
      raise 'not implemented'
    end

    def sauce
      raise 'not implemented'
    end

    def prepare
      [dough, sauce]
    end

    def bake
      'bakes'
    end

    def cut
      'cuts'
    end

    def pack
      'packs'
    end
  end
end
