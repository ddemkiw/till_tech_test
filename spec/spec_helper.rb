require 'capybara/rspec'
require './app/server'
require './app/models/customer'
require './app/models/order'
require './app/models/receipt'
require './app/models/menu'


RSpec.configure do |config|

  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
