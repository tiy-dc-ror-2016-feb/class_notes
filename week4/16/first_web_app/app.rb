require 'sinatra'
require 'json'

before do
  content_type 'application/json'
end

get "/people" do
  { name: 'Bob' }.to_json
end
