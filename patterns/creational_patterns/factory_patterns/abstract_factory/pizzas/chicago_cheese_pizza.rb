module AbstractFactory
  module Pizzas
    class ChicagoCheesePizza < AbstractPizza
      def initialize(ingredient_factory)
        super
      end

      def dough
        @ingredient_factory.create_fluffy_dough
      end

      def sauce
        @ingredient_factory.create_creamy_sauce
      end
    end
  end
end
