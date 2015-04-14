module Transcoder
  module API
    module V1
      class Ping < Grape::API
        desc 'Prints current time.'
        get '/ping' do
          { pong: "Time now is: #{Time.now}" }
        end
      end
    end
  end
end
