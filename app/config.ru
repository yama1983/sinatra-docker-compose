require './controllers/root.rb'

map('/') do
  run Root
end
