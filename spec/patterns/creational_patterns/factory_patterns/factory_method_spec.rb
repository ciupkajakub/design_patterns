require 'rspec'
require_relative '../../../spec_helper'
require_relative '../../../../patterns/creational_patterns/factory_patterns/factory_method/factory_method'

RSpec.describe 'factory_method.rb' do
  it 'produces a pizza', :aggregate_failures do
    ny_store = NewYorkPizzaStore.new
    ch_store = ChicagoPizzaStore.new

    expect(ny_store.order_pizza('pepperoni')).to be_a(NewYorkPepperoniPizza)
    expect(ch_store.order_pizza('cheese')).to be_a(ChicagoCheesePizza)
  end
end
