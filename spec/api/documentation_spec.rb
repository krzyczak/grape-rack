require 'spec_helper'

RSpec.describe 'API docs', type: :api do
  it 'renders swagger documentation for v1' do
    get '/api/v1/docs'
    expect(last_response.status).to eq(200)
    json_response = JSON.parse(last_response.body)
    expect(json_response['apiVersion']).to eq('v1')
    expect(json_response['apis'].size).to be > 0
  end

  it 'renders swagger documentation for v2' do
    get '/api/v2/docs'
    expect(last_response.status).to eq(200)
    json_response = JSON.parse(last_response.body)
    expect(json_response['apiVersion']).to eq('v2')
    expect(json_response['apis'].size).to be > 0
  end
end
