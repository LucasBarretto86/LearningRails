# config.ru
require './app'  # Require your main Sinatra application file
run Sinatra::Application  # Tell Rack to run the Sinatra application
