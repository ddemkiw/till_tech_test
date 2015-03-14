require 'sinatra/base'

class Till < Sinatra::Base
  get '/' do
    "2 x Cafe Latte
    1 x Blueberry Muffin
    1 x Choc Mudcake"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
