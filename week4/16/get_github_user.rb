require 'net/http'
require 'json'
require 'pry'
require 'minitest/autorun'


class Issue
  def list
    uri = URI("https://api.github.com/issues")
    user = ENV['GITHUB_USER']
    password = ENV['GITHUB_PASSWORD']

    # Build client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    # Build request
    req = Net::HTTP::Get.new(uri.request_uri)
    req.basic_auth(user, password)

    # Actually Perform the request
    response = http.request(req)

    # Turn the request body into a ruby object
    return JSON.parse(response.body)
  end
end


class IssueTest < Minitest::Test
  def test_issue_can_list_issues
    api = Issue.new
    assert_equal 2, api.list.size
  end
end
