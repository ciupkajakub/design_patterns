module AbstractFactory
  module IngredientFactories
    class AbstractIngredientFactory
      def create_crunchy_dough
        raise 'not implemented crunchy dough creation'
      end

      def create_fluffy_dough
        raise 'not implemented fluffy dough creation'
      end

      def create_creamy_sauce
        raise 'not implemented creamy sauce creation'
      end

      def create_hot_sauce
        raise 'not implemented hot sauce creation'
      end
    end
  end
end
