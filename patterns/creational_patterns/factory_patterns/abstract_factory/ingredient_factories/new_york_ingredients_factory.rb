module AbstractFactory
  module IngredientFactories
    class NewYorkIngredientFactory
      def create_crunchy_dough
        AbstractFactory::Ingredients::Dough::NewYorkCrunchyDough.new
      end

      def create_fluffy_dough
        AbstractFactory::Ingredients::Dough::NewYorkFluffyDough.new
      end

      def create_creamy_sauce
        AbstractFactory::Ingredients::Sauces::NewYorkCreamySauce.new
      end

      def create_hot_sauce
        AbstractFactory::Ingredients::Sauces::NewYorkHotSauce.new
      end
    end
  end
end
