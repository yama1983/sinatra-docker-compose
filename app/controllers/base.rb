require 'sinatra/base'
require 'unicorn'

class Base < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  configure :production, :development do
    enable :logging
  end
end
