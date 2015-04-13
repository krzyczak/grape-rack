require 'spec_helper'

describe Transcoder::API::V2::Base do
  include Rack::Test::Methods

  def app
    Transcoder::API::Base
  end

  it 'ping' do
    get '/api/v2/ping', name: 'Janek'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to match(/Hello Janek! Current time is: \d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} \+\d{4}/)
  end
end
