module AbstractFactory
  module PizzaStores
    class AbstractPizzaStore
      class << self
        def create_pizza(_type)
          raise 'not implemented pizza creation'
        end

        def order_pizza(type)
          pizza = create_pizza(type)

          pizza.prepare
          pizza.bake
          pizza.cut
          pizza.pack

          pizza
        end
      end
    end
  end
end
