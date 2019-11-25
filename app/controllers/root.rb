require '/app/controllers/base.rb'
require 'unicorn'

class Root < Base
  get '/' do
    "hello world!!!!"
  end

  get '/env' do
    ENV['RACK_ENV']
  end
end