require 'spec_helper'

describe Transcoder::API::V1::Base do
  include Rack::Test::Methods

  def app
    Transcoder::API::Base
  end

  it 'ping' do
    get '/api/v1/ping'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to match(/Time now is: \d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} \+\d{4}/)
  end
end
