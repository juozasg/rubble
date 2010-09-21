require 'rack/test'
require './rubble.rb'
require 'pp'

include Rack::Test::Methods



describe "Rubble" do
  def app
    @app ||= Rack::Builder.parse_file('config.ru')[0]
  end

  it "says 'Hello World'" do
    get '/'

    last_response.should be_ok
    last_response.body.should == "Hello World"
  end
end
