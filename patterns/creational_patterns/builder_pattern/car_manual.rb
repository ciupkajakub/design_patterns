module BuilderPattern
  class CarManual
    attr_accessor :fuel_description, :engine_description, :drive_description

    def ==(other)
      other.class == self.class &&
        self.fuel_description == other.fuel_description &&
        self.engine_description == other.engine_description &&
        self.drive_description == other.drive_description
    end
  end
end
