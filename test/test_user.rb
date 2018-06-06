require 'minitest/autorun'
require 'webmock/minitest'
require 'tremendous'

class UserTest < Minitest::Test
  def test_initialization
    data = {
      "email": "james@sales.com",
      "name": "James Fields"
    }.with_indifferent_access

    user = Tremendous::User.new(data)

    assert_equal data[:email], user.email
    assert_equal data[:name], user.name
  end
end
