module AbstractFactory
  module Ingredients
    module Dough
      class AbstractDough
        def info
          raise 'not implemented dough'
        end
      end
    end
  end
end
