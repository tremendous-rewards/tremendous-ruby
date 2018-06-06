require 'minitest/autorun'
require 'tremendous'


class TremendousTest < Minitest::Test
  def test_config
    access_token = 'abcdefg'
    Tremendous.configure do |config|
      config[:access_token] = access_token
    end
    assert_equal Tremendous.class_variable_get('@@config')[:access_token], access_token
  end
end
