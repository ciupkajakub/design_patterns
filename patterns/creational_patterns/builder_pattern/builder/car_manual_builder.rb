module BuilderPattern
  module Builder
    class CarManualBuilder < AbstractBuilder
      def initialize
        reset
      end

      def reset
        @product = BuilderPattern::CarManual.new
      end

      def product
        product = @product
        reset
        product
      end

      def produce_fuel
        @product.fuel_description = 'should use only petrol'
      end

      def produce_engine
        @product.engine_description = 'high rpm only'
      end

      def produce_drive
        @product.drive_description = 'only rear wheels are included'
      end
    end
  end
end
