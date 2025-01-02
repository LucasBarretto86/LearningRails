# spec/spec_helper.rb
require 'sinatra'
require 'rack/test'
require 'rspec'

# Configure RSpec to include Sinatra helpers directly
RSpec.configure do |config|
  config.include Rack::Test::Methods  # Sinatra helpers included directly
  config.include RSpecMixin           # If you have your own helpers
end