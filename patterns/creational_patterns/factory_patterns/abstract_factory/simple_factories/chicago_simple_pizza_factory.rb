module AbstractFactory
  module SimpleFactories
    class ChicagoSimplePizzaFactory
      class << self
        def create_pizza(type)
          case type
          when 'cheese' then AbstractFactory::Pizzas::ChicagoCheesePizza.new(ingredients_factory)
          when 'pepperoni' then AbstractFactory::Pizzas::ChicagoPepperoniPizza.new(ingredients_factory)
          else raise 'not supported pizza type'
          end
        end

        def ingredients_factory
          AbstractFactory::IngredientFactories::ChicagoIngredientFactory
        end
      end
    end
  end
end
