module AbstractFactory
  module SimpleFactories
    class NewYorkSimplePizzaFactory
      class << self
        def create_pizza(type)
          case type
          when 'cheese' then AbstractFactory::Pizzas::NewYorkCheesePizza.new(ingredients_factory)
          when 'pepperoni' then AbstractFactory::Pizzas::NewYorkPepperoniPizza.new(ingredients_factory)
          else raise 'not supported pizza type'
          end
        end

        def ingredients_factory
          AbstractFactory::IngredientFactories::NewYorkIngredientFactory
        end
      end
    end
  end
end
