module AbstractFactory
  module Pizzas
    class ChicagoPepperoniPizza < AbstractPizza
      def initialize(ingredient_factory)
        super
      end

      def dough
        @ingredient_factory.create_crunchy_dough
      end

      def sauce
        @ingredient_factory.create_hot_sauce
      end
    end
  end
end
