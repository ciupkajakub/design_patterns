module AbstractFactory
  module Ingredients
    module Sauces
      class AbstractSauce
        def info
          raise 'not implemented sauce'
        end
      end
    end
  end
end
