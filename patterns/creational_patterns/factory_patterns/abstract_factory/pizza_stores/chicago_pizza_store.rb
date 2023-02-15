module AbstractFactory
  module PizzaStores
    class ChicagoPizzaStore < AbstractPizzaStore
      class << self
        def create_pizza(type)
          AbstractFactory::SimpleFactories::ChicagoSimplePizzaFactory.create_pizza(type)
        end
      end
    end
  end
end
