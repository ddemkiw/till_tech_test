require 'spec_helper'

describe 'Menu' do 

  let(:menu) { Menu.new }

  it 'contains a list of items' do
    expect(menu.items).to include('Americano')
  end 

  it 'can find an item based on item name' do
    expect(menu.find('Americano')).to include('Americano')
  end 

end