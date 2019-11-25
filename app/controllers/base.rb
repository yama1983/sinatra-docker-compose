require 'sinatra/base'
require 'sinatra/reloader'
require 'unicorn'

class Base < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  configure :production, :development do
    enable :logging
    register Sinatra::Reloader
  end
end
