require 'net/http'
require 'json'
require 'pry'

class CloseIssue
  def close_issue(issue_number)
    uri = URI("https://api.github.com/repos/tacookenna/legacy_associations_and_validations/issues/#{issue_number}")

    username = ENV['GITHUB_USER']
    password = ENV['GITHUB_PASSWORD']

    # Build client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.set_debug_output($stdout)

    # Add argument for patch request
    update = { "state" => "closed" }

    # Build request
    request = Net::HTTP::Patch.new(uri.request_uri, update)
    
    request.body = JSON.generate update
    request.basic_auth(username, password)

    # Perform request
    response = http.request(request)

    # Request response becomes a Ruby object
    return JSON.parse(response.body)
  end
end
binding.pry
CloseIssue.new.close_issue(1)
