module Transcoder
  module API
    module V1
      class Ping < Grape::API
        get '/ping' do
          { pong: "Time now is: #{Time.now}" }
        end
      end
    end
  end
end
