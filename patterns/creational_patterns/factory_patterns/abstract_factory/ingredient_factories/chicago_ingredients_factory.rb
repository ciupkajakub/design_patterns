module AbstractFactory
  module IngredientFactories
    class ChicagoIngredientFactory
      def create_crunchy_dough
        AbstractFactory::Ingredients::Dough::ChicagoCrunchyDough.new
      end

      def create_fluffy_dough
        AbstractFactory::Ingredients::Dough::ChicagoFluffyDough.new
      end

      def create_creamy_sauce
        AbstractFactory::Ingredients::Sauces::ChicagoCreamySauce.new
      end

      def create_hot_sauce
        AbstractFactory::Ingredients::Sauces::ChicagoHotSauce.new
      end
    end
  end
end
