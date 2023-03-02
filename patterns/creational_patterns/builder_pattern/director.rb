module BuilderPattern
  class Director
    def initialize
      @builder = nil
    end

    def builder=(builder)
      @builder  = builder
    end

    def produce_car
      @builder.produce_fuel
      @builder.produce_engine
      @builder.produce_drive
    end

    def produce_car_manual
      @builder.produce_fuel
      @builder.produce_engine
      @builder.produce_drive
    end
  end
end
