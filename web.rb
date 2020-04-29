require 'sinatra'
require 'json'

set :port, 8080

get '/' do
{ name: 'Hello',
description: 'World',
Url: request.url }.to_json
end