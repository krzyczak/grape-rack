module Transcoder
  module API
    class Base < Grape::API
      prefix :api
      format :json
      mount ::Transcoder::API::V1::Base
      mount ::Transcoder::API::V2::Base
    end
  end
end
