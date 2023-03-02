module BuilderPattern
  class Client
    def initialize; end

    def handle
      director = BuilderPattern::Director.new
      car_builder = BuilderPattern::Builder::CarBuilder.new
      car_manual_builder = BuilderPattern::Builder::CarManualBuilder.new

      director.builder= car_builder
      director.produce_car
      car = car_builder.product

      director.builder= car_manual_builder
      director.produce_car_manual
      car_manual = car_manual_builder.product

      [car, car_manual]
    end
  end
end
