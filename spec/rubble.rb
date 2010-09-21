require 'rack/test'
require './rubble.rb'

include Rack::Test::Methods



describe "Rubble" do
  def app
      @app ||= Rubble.new
  end

  it "says 'Hello World'" do
    get '/'

    last_response.should be_ok
    last_response.body.should == "Hello World"
  end
end
