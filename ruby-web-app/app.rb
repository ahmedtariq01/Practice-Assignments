require 'sinatra'

# Specify port and bind to localhost
set :port, 4567
set :bind, '0.0.0.0'

# Define a route for the root URL
get '/' do
  'Hello, world! This is my first Sinatra app.'
end
