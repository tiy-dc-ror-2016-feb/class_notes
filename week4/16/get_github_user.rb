require 'net/http'
require 'json'
require 'pry'

class Gists
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def create(new_gist_data)
    payload = JSON.generate(new_gist_data)
    uri = URI("https://api.github.com/gists")
    req = Net::HTTP::Post.new(uri, {'Content-Type' =>'application/json'})
    req.basic_auth ENV['GITHUB_USER'], ENV['GITHUB_PASSWORD']
    req.body = payload

    #
    http = Net::HTTP.new(uri.hostname, uri.port)
    #
    http.use_ssl = true
    http.start
    response = http.request(req)
    return response
  end

  def list
    uri = URI("https://api.github.com/users/#{user}/gists")
    response = Net::HTTP.get(uri)
    return JSON.parse(response)
  end
end

new_gist = {
  "description" => "the description for this gist",
  "public" => true,
  "files" => {
    "file1.txt" => {
      "content" => "String file contents"
    }
  }
}

a = Gists.new("rposborne")
binding.pry
puts "hello"
