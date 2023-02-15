module AbstractFactory
  module PizzaStores
    class NewYorkPizzaStore < AbstractPizzaStore
      class << self
        def create_pizza(type)
          AbstractFactory::SimpleFactories::NewYorkSimplePizzaFactory.create_pizza(type)
        end
      end
    end
  end
end
