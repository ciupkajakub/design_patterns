module BuilderPattern
  class Car
    attr_accessor :fuel, :engine, :drive

    def ==(other)
      other.class == self.class &&
        self.fuel == other.fuel &&
        self.engine == other.engine &&
        self.drive == other.drive
    end
  end
end
