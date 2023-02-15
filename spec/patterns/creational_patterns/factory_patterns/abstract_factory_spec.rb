require 'rspec'
require_relative '../../../spec_helper'
require 'require_all'
require_all 'patterns'

RSpec.describe 'abstract factory' do
  it 'produces a pizza', :aggregate_failures do
    chicago_cheese_pizza = AbstractFactory::PizzaStores::ChicagoPizzaStore.order_pizza('cheese')
    chicago_pepperoni_pizza = AbstractFactory::PizzaStores::ChicagoPizzaStore.order_pizza('pepperoni')
    new_york_cheese_pizza = AbstractFactory::PizzaStores::NewYorkPizzaStore.order_pizza('cheese')
    new_york_pepperoni_pizza = AbstractFactory::PizzaStores::NewYorkPizzaStore.order_pizza('pepperoni')

    expect(chicago_cheese_pizza.dough.info).to eq( 'mm chicago fluffy dough')
    expect(chicago_cheese_pizza.sauce.info).to eq( 'mm chicago creamy sauce')
    expect(chicago_pepperoni_pizza.dough.info).to eq( 'mm chicago crunchy dough')
    expect(chicago_pepperoni_pizza.sauce.info).to eq( 'mm chicago hot sauce')
    expect(new_york_cheese_pizza.dough.info).to eq( 'mm new york fluffy dough')
    expect(new_york_cheese_pizza.sauce.info).to eq( 'mm new york creamy sauce')
    expect(new_york_pepperoni_pizza.dough.info).to eq( 'mm new york crunchy dough')
    expect(new_york_pepperoni_pizza.sauce.info).to eq( 'mm new york hot sauce')
  end
end
