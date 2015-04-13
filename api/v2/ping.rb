module Transcoder
  module API
    module V2
      class Ping < Grape::API
        desc 'Prints hello message and current time.'
        params do
          requires :name, type: String
        end
        get '/ping' do
          { pong: "Hello #{params[:name]}! Current time is: #{Time.now}" }
        end
      end
    end
  end
end
