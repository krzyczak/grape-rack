module Transcoder
  module API
    module V1
      class Base < Grape::API
        version :v1, using: :path, format: :json, vendor: 'tbs', strict: true
        mount ::Transcoder::API::V1::Ping
        add_swagger_documentation format: :json, base_path: '/api', api_version: 'v1', mount_path: '/docs', hide_documentation_path: true, hide_format: true, info: {
          title: 'Transcoder API',
          description: 'Zencoders compiland API for transcoding services.',
          contact: 'thebigsofa@gmail.com'
        }
      end
    end
  end
end
