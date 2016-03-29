require 'net/http'
require 'json'
require 'pry'
require 'minitest/autorun'
require './issue'

# class Issue
#
#   def query_list
#     File.read("./authed_issues.json")
#   end
#
# end

class IssueTest < Minitest::Test
  def test_issue_can_list_issues
    api = Issue.new
    assert_equal 2, api.list.size
  end
end
