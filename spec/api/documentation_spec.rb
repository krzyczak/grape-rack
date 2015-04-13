require 'spec_helper'

describe Transcoder::API::Base do
  include Rack::Test::Methods

  def app
    Transcoder::API::Base
  end

  it 'swagger documentation for v1 is available' do
    get '/api/v1/docs'
    expect(last_response.status).to eq(200)
    json_response = JSON.parse(last_response.body)
    expect(json_response['apiVersion']).to eq('v1')
    expect(json_response['apis'].size).to be > 0
  end

  it 'swagger documentation for v2 is available' do
    get '/api/v2/docs'
    expect(last_response.status).to eq(200)
    json_response = JSON.parse(last_response.body)
    expect(json_response['apiVersion']).to eq('v2')
    expect(json_response['apis'].size).to be > 0
  end
end
