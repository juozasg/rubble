require './rubble.rb'

#\ -p 3000
use Rack::Reloader, 0
use Rack::ContentLength
run Rubble.new

