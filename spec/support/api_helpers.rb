module ApiHelpers
  def app
    Transcoder::App.new
  end
end

RSpec.configuration.include ApiHelpers, type: :api
RSpec.configuration.include Rack::Test::Methods, type: :api
