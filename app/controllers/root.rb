require '/app/controllers/base.rb'
require 'unicorn'

class Root < Base
  get '/' do
    a = 1+1
    "hello world!!!#{a}"
  end

  get '/env' do
    ENV['RACK_ENV']
  end
end