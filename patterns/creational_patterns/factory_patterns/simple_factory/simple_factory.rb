# Let's say we have some client code that handles
# conditional pizza creation, based on the pizza_type
# attribute, we create a specific meal

class PizzaStoreHandler
  def handle(pizza_type)
    pizza = case pizza_type
            when 'cheese' then CheesePizza.new
            when 'pepperoni' then PepperoniPizza.new
            else raise 'Unknown pizza type'
            end

    pizza.prepare
    pizza.bake
    pizza.pack
  end
end

# All pizzas share the same process so in that case we use the inheritance.
class Pizza
  def prepare
    'prepares'
  end

  def bake
    'bakes'
  end

  def pack
    'packs'
  end
end

class CheesePizza < Pizza; end

class PepperoniPizza < Pizza; end

# To encapsulate the conditional initialization we can
# use the simple_factory idiom to extract that part to
# a class which will decide which one to create

class PizzaFactory
  class << self
    def create_pizza(pizza_type)
      case pizza_type
      when 'cheese' then CheesePizza.new
      when 'pepperoni' then PepperoniPizza.new
      else raise 'Unknown pizza type'
      end
    end
  end
end

#After refactoring the initial code with the simple_factory usage
# we end with something like this:

class PizzaStoreHandler
  def handle(params)
    pizza = PizzaFactory.create_pizza(params[:pizza_type])

    pizza.prepare
    pizza.bake
    pizza.pack
  end
end
