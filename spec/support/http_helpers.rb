module HttpHelpers
  def mock_response(code, body)
    response_mock = double(code: code, body: body, to_hash: {})
    request = HTTParty::Request.new('GET', 'anything', { format: :json })
    return HTTParty::Response.new(request, response_mock, lambda { request.send(:parse_response, body) }, body: body)
  end
end
