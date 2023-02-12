# but what is case when we decide we want to franchise our
# PizzaStore and we decide we create an class for each
# city. To stay consistent with the PizzaStore we will use the factory method

class FactoryMethod; end #that is here to run the rspec

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

# The PizzaStore is an 'abstract' creator class which will be used as
# a parent class to the specific pizza store(new york, chicago etc).
# It has implemented two methods: order_pizza and create_pizza.
# Where the create_pizza is the factory_method. In the superclass
# definition it has no implementation, however the order_pizza relies on it.
# The logic of the create_pizza method will be defined by the subclasses.
# With that approach we let them decide which objects should be created.
class PizzaStore
  def create_pizza(_pizza_type)
    raise 'not implemented'
  end

  def order_pizza(pizza_type)
    pizza = create_pizza(pizza_type)

    pizza.prepare
    pizza.bake
    pizza.pack
    pizza
  end
end

class NewYorkCheesePizza < Pizza; end

class NewYorkPepperoniPizza < Pizza; end

class ChicagoCheesePizza < Pizza; end

class ChicagoPepperoniPizza < Pizza; end

# The simple factories are also created for extracting the conditionals
class SimpleNewYorkPizzaFactory
  class << self
    def create_pizza(pizza_type)
      case pizza_type
      when 'cheese' then NewYorkCheesePizza.new
      when 'pepperoni' then NewYorkPepperoniPizza.new
      else raise 'unsupported pizza_type'
      end
    end
  end
end

class SimpleChicagoPizzaFactory
  class << self
    def create_pizza(pizza_type)
      case pizza_type
      when 'cheese' then ChicagoCheesePizza.new
      when 'pepperoni' then ChicagoPepperoniPizza.new
      else raise 'unsupported pizza_type'
      end
    end
  end
end

# And the subclasses of the abstract creator class which overwrite
# the create_pizza method according to the Pizza style, however keeping
# the same interface(like in franchise we probably have the same procedures etc.)
# Now having defined the specific type of object which will be returned we can use
# the order_pizza method which in the abstract creator class is not possible.
class NewYorkPizzaStore < PizzaStore
  def create_pizza(pizza_type)
    SimpleNewYorkPizzaFactory.create_pizza(pizza_type)
  end
end

class ChicagoPizzaStore < PizzaStore
  def create_pizza(pizza_type)
    SimpleChicagoPizzaFactory.create_pizza(pizza_type)
  end
end
