require 'spec_helper'

RSpec.describe '/api/v1/ping', type: :api do
  describe 'get' do
    it 'renders current time' do
      get '/api/v1/ping'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to match(/Time now is: \d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} \+\d{4}/)
    end
  end
end
