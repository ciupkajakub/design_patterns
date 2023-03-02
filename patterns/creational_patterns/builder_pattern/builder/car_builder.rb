module BuilderPattern
  module Builder
    class CarBuilder < AbstractBuilder
      def initialize
        reset
      end

      def reset
        @product = BuilderPattern::Car.new
      end

      def product
        product = @product
        reset
        product
      end

      def produce_fuel
        @product.fuel = 'petrol'
      end

      def produce_engine
        @product.engine = '5.0 v8'
      end

      def produce_drive
        @product.drive = 'RWD'
      end
    end
  end
end
