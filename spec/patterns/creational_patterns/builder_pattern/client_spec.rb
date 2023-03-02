require 'rspec'
require_relative '../../../spec_helper'
require 'require_all'
require_all 'patterns'

RSpec.describe 'builder pattern' do
  it 'produces a car and a car manual', :aggregate_failures do
    car = BuilderPattern::Car.new
    car.fuel = 'petrol'
    car.engine = '5.0 v8'
    car.drive = 'RWD'

    car_manual = BuilderPattern::CarManual.new
    car_manual.fuel_description = 'should use only petrol'
    car_manual.engine_description = 'high rpm only'
    car_manual.drive_description = 'only rear wheels are included'

    client = BuilderPattern::Client.new

    expect(client.handle).to eq([car, car_manual])
  end
end
