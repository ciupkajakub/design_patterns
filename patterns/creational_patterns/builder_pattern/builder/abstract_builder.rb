module BuilderPattern
  module Builder
    class AbstractBuilder
      def produce_fuel
        raise 'not implemented'
      end

      def produce_engine
        raise 'not implemented'
      end

      def produce_drive
        raise 'not implemented'
      end
    end
  end
end
