require 'minitest/autorun'
require 'webmock/minitest'
require 'tremendous'

class PaymentTest < Minitest::Test
  def test_initialization
    data = {
      "amount": 30,
      "fees": 2,
      "total": 32,
      "funding_source_id": 'LARFAF2423'
    }.with_indifferent_access

    payment = Tremendous::Payment.new(data)

    assert_equal data[:amount], payment.amount
    assert_equal data[:fees], payment.fees
    assert_equal data[:total], payment.total
    assert_equal data[:funding_source_id], payment.funding_source_id
  end
end
