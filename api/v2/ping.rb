module Transcoder
  module API
    module V2
      class Ping < Grape::API
        desc 'Prints hello message and current time.'
        get '/ping' do
          { pong: "Hello! Current time is: #{Time.now}" }
        end
      end
    end
  end
end
